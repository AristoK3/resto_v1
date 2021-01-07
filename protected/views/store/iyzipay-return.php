<?php
echo "here";print_r($_POST);exit;
if(!isset($_GET['platform']))
{
  $this->renderPartial('/front/banner-receipt',array(
     'h1'=>t("Payment"),
     'sub_text'=>t("")
  ));
  $this->renderPartial('/front/order-progress-bar',array(
     'step'=>4,
     'show_bar'=>true
  ));
} 
$admin_iyzipay_form_style=yii::app()->functions->getOptionAdmin('admin_iyzipay_form_style');
$data='';
$data2='';
$params='';
$error='';
$merchant_id='';
$merchant_earnings='';
$t_commission='';
$ok=false;      
//print_r($_POST);exit;
session_start();

if (isset($_POST)){     //echo "here";print_r($_POST);exit;
	if (is_array($_POST) && count($_POST)>=1){	
	//require_once(Yii::app()->basePath."/components/iyzipay/config.php");
	require_once(Yii::app()->basePath.'/components/iyzipay/IyzipayBootstrap.php');
	IyzipayBootstrap::init();
class Config
{
    public static function options()
    {
        $options = new \Iyzipay\Options();
		$iyzipay_con=Yii::app()->functions->getiyzipayConnectionAdmin();  
		$options->setApiKey($iyzipay_con[$iyzipay_con['mode']]['api_key']);
        $options->setSecretKey($iyzipay_con[$iyzipay_con['mode']]['secret_key']);
        $options->setBaseUrl($iyzipay_con[$iyzipay_con['mode']]['iyzipay_web']);
	    return $options;
    }
}
$request = new \Iyzipay\Request\RetrieveCheckoutFormRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
//$request->setConversationId($data['merchant_id']);
 $token = $_POST['token'];
$request->setToken($token);
$response = \Iyzipay\Model\CheckoutForm::retrieve($request, Config::options());
$api_response = $response->getStatus();
/*insert data to database start*/
$item_transactions = $response->getPaymentItems();
if('success' == $response->getStatus()){
	$payment_status = $response->getPaymentStatus();
	if (empty($api_response) || 'SUCCESS' == $payment_status) {
foreach($item_transactions as $item_transaction){
	$TransactionId=$item_transaction->getPaymentTransactionId();
}
	            /*dump("pay ->".$chargeArray['paid']);
            echo json_encode($chargeArray);*/            	        
	        $db_ext=new DbExt;
	        $params_logs=array(
	          'order_id'=>$_SESSION['ls_order_id'],
	          'payment_type'=>"iyzipay",
	          'raw_response'=>$response->getrawResult(),
	          'date_created'=>FunctionsV3::dateNow(),
	          'ip_address'=>$_SERVER['REMOTE_ADDR']
	        );
	        $status=$db_ext->insertData("{{payment_order}}",$params_logs);
	        $params_update=array(
	         'status'=>'paid'
	        );	        
	        $db_ext->updateData("{{order}}",$params_update,'order_id',$_SESSION['ls_order_id']);
	        
	        //session set for app buyer
	        if($_SESSION['ls_order_platform']=="app")
            $_SESSION['kr_client']['client_id'] = $_SESSION['ls_order_buyer'];
	        //end
	        
          // approve payment call to iyzico- by nancy
          $de = json_decode($response->getrawResult(),true);
          for($k=0;$k<count($de['itemTransactions']);$k++)
          {
          	$request1 = new \Iyzipay\Request\CreateApprovalRequest();
            $request1->setLocale(\Iyzipay\Model\Locale::TR);
            $request1->setConversationId(uniqid());
            $request1->setPaymentTransactionId($de['itemTransactions'][$k]['paymentTransactionId']);
            
            $approval = \Iyzipay\Model\Approval::create($request1, Config::options());
          }				
        	// end iyzico call	
	        
	        /*POINTS PROGRAM*/ 
	        if (FunctionsV3::hasModuleAddon("pointsprogram")){
	           PointsProgram::updatePoints($_SESSION['ls_order_id']);
	        }
	        
	        /*Driver app*/
			if (FunctionsV3::hasModuleAddon("driver")){
			   Yii::app()->setImport(array(			
				  'application.modules.driver.components.*',
			   ));
			   Driver::addToTask($_SESSION['ls_order_id']);
			}
	        	        
	        $this->redirect( Yii::app()->createUrl('/store/receipt',array(
	          'id'=>$_SESSION['ls_order_id']
	        )) );
			unset($_SESSION['ls_order_id']);
			unset($_SESSION['ls_order_platform']);
			unset($_SESSION['ls_order_buyer']);
}}else{
		$error=$response->getErrorMessage();
	}
	}
}
?>
