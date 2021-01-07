<?php  
//echo "here";print_r($_POST);exit;
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
if ( $data=Yii::app()->functions->getOrder($_GET['id'])){
//dump($data);exit;
	$_SESSION['ls_order_id']=$_GET['id'];
	
  if(isset($_GET['platform']))
  {
    $_SESSION['ls_order_platform']=$_GET['platform'];
    $_SESSION['ls_order_buyer']=$data['client_id'];
  } else
    $_SESSION['ls_order_platform']='website';
    
	$merchant_id=$data['merchant_id'];	
	$merchant_earnings = $data['merchant_earnings']; 
  $t_commission = $data['total_commission'];
	$json_details=!empty($data['json_details'])?json_decode($data['json_details'],true):false;
	//dump($json_details); exit;
		
	if ( $json_details !=false){
		$p_arams=array( 
		   'merchant_id'=>$data['merchant_id'],
		   'delivery_type'=>$data['trans_type'],
		   'voucher_amount'=>$data['voucher_amount'],
		   'voucher_type'=>$data['voucher_type']
		);		
		Yii::app()->functions->displayOrderHTML($p_arams,$json_details,true);
		if ( Yii::app()->functions->code==1){
			$ok=true;
		}
	}	
	
	//echo "here";exit;
	/*$row=Yii::app()->db->createCommand()->select('*')->from('mt_address_book')->where('client_id='.$data['client_id'])->queryRow();
	print_r($row); //prints gametitle
	echo "<br>";
   $client_detais=Yii::app()->db->createCommand()->select('*')->from('mt_client')->where('client_id='.$data['client_id'])->queryRow();
   print_r($client_detais);
   echo "<br>";
   $billing_detais=Yii::app()->db->createCommand()->select('*')->from('mt_order_delivery_address')->where('order_id='.$_GET['id'])->queryRow();
   print_r($billing_detais);
   echo "<br>";
   echo "<br>";*/
}
//print_r(Yii::app()->functions->getOrder($_GET['id']));
if ( $ok==true){
   $data2=Yii::app()->functions->details['raw'];        
   //$iyzipay_con=Yii::app()->functions->getiyzipayConnection($merchant_id);  
   $iyzipay_con=Yii::app()->functions->getiyzipayConnectionAdmin();
   //dump($iyzipay_con);die();
   /*get admin iyzipay connection if merchant is commission*/
   //if ( Yii::app()->functions->isMerchantCommission($merchant_id)){
   if (FunctionsV3::isMerchantPaymentToUseAdmin($merchant_id)){
   	   unset($iyzipay_con);   	   
   	   $iyzipay_con=Yii::app()->functions->getiyzipayConnectionAdmin();   	   
   }  
   
       
   //dump($iyzipay_con);die();
  // print_r(Yii::app()->basePath."/components/iyzipay/config.php");
   if ( !empty($iyzipay_con[$iyzipay_con['mode']]['api_key'])){   	     
	   if (is_array($data) && count($data)>=1){
	   	   $x=0;	   	   	   	   
	       
		   /*starts*/
		   $client_address_details=Yii::app()->db->createCommand()->select('*')->from('mt_address_book')->where('client_id='.$data['client_id'])->queryRow();
		   if($client_address_details){
			  $client_address= $client_address_details['location_name'];
		   }else{
			   $client_address='NOT PROVIDED';
		   }
		   $client_details=Yii::app()->db->createCommand()->select('*')->from('mt_client')->where('client_id='.$data['client_id'])->queryRow();
		   $buyer_firstname= !empty($client_details['first_name']) ? $client_details['first_name'] : 'NOT PROVIDED';
		   $buyer_lastname= !empty($client_details['last_name']) ? $client_details['last_name'] : 'NOT PROVIDED';
		   $buyer_phone= !empty($client_details['contact_phone']) ? $client_details['contact_phone'] : 'NOT PROVIDED';
		   $buyer_email= !empty($client_details['email_address']) ? $client_details['email_address'] : 'NOT PROVIDED';
		   $buyer_city= !empty($client_details['city']) ? $client_details['city'] : 'NOT PROVIDED';
		   $buyer_country= !empty($client_details['country_code']) ? $client_details['country_code'] : 'NOT PROVIDED';
		   $buyer_zipcode= !empty($client_details['zipcode']) ? $client_details['zipcode'] : 'NOT PROVIDED';
		   
		   $billing_details=Yii::app()->db->createCommand()->select('*')->from('mt_order_delivery_address')->where('order_id='.$_GET['id'])->queryRow();
		   $billing_city=!empty($billing_details['city']) ? $billing_details['city'] : 'NOT PROVIDED';
		   $billing_state=!empty($billing_details['state']) ? $billing_details['state'] : 'NOT PROVIDED';
		   $billing_country=!empty($billing_details['country']) ? $billing_details['country'] : 'NOT PROVIDED';
		   $billing_zipcode=!empty($billing_details['zipcode']) ? $billing_details['zipcode'] : 'NOT PROVIDED';
		   $billing_full_name=!empty($buyer_firstname) ? $buyer_firstname." ".$buyer_lastname : 'NOT PROVIDED';
		   $billing_complete_address=$billing_details['location_name'].", ".$billing_details['street'].", ".$billing_details['city'].", ".$billing_details['state'].", ".$billing_details['zipcode'].", ".$billing_details['country'];
		
		   $order_data=Yii::app()->functions->getOrder($_GET['id']);
		   require_once(Yii::app()->basePath."/components/iyzipay/config.php");
		  $IdentityNumber=(int)mt_rand(10000, 99999).(int)$_GET['id']; 
		  
		  if($data['delivery_charge']!="" && $data['delivery_charge'] > 0)
          $delivery_price = $data['delivery_charge'];
      else
          $delivery_price = 0;
          
          //echo isIsset(normalPrettyPrice($data['total_w_tax'] - $delivery_price) );exit;
		  # create request class
$request = new \Iyzipay\Request\CreateCheckoutFormInitializeRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
//$request->setConversationId(isIsset($_GET['id']));

//$request->setPrice(isIsset(normalPrettyPrice($data['total_w_tax'] - $delivery_price) ));
//$request->setPaidPrice(isIsset(normalPrettyPrice($data['total_w_tax']) ));
$request->setPrice(isIsset(normalPrettyPrice($data['total_w_tax']) ));
$request->setPaidPrice(isIsset(normalPrettyPrice($data['total_w_tax']) ));
$request->setCurrency(Yii::app()->functions->adminCurrencyCode());
$request->setBasketId(isIsset($_GET['id']));
$request->setPaymentGroup(\Iyzipay\Model\PaymentGroup::PRODUCT);
$request->setCallbackUrl(websiteUrl()."/iyzipayinit");
//$request->setCallbackUrl(websiteUrl()."/iyzipayreturn");
$buyer = new \Iyzipay\Model\Buyer();
$buyer->setId(isIsset($_GET['id']));
$buyer->setName(stripslashes($buyer_firstname));
$buyer->setSurname($buyer_lastname);
$buyer->setGsmNumber($buyer_phone);
$buyer->setEmail($buyer_email);
$buyer->setIdentityNumber((string)$IdentityNumber);
//$buyer->setRegistrationAddress($client_address);
$buyer->setRegistrationAddress($billing_complete_address);
$buyer->setIp($_SERVER['REMOTE_PORT']);
$buyer->setCity($buyer_city);
$buyer->setCountry($buyer_country);
$buyer->setZipCode($buyer_zipcode);
$request->setBuyer($buyer);
$shippingAddress = new \Iyzipay\Model\Address();
$shippingAddress->setContactName($billing_full_name);
$shippingAddress->setCity($billing_city);
$shippingAddress->setCountry($billing_country);
$shippingAddress->setAddress($billing_complete_address);
$shippingAddress->setZipCode($billing_zipcode);
$request->setShippingAddress($shippingAddress);
$billingAddress = new \Iyzipay\Model\Address();
$billingAddress->setContactName($billing_full_name);
$billingAddress->setCity($billing_city);
$billingAddress->setCountry($billing_country);
$billingAddress->setAddress($billing_complete_address);
$billingAddress->setZipCode($billing_zipcode);
$request->setBillingAddress($billingAddress);
/*retrive data from json and use foreach loop $data['json_details']*/

$item_details = json_decode($data['json_details']);
//echo "<pre>";print_r($item_details);exit;
   
$basketItems = array();
foreach($item_details as $item_detail){
	$discount=$item_detail->discount*$item_detail->qty;
	$total_price_item=($item_detail->price*$item_detail->qty)-$discount;
	//$total_price_item = isIsset(normalPrettyPrice($total_price_item) );
	//echo $total_price_item;exit;
	$items=Yii::app()->db->createCommand()->select('item_name')->from('mt_item')->where('	item_id='.$item_detail->item_id)->queryRow();
	//print_r($items['item_name']);
	$item_cat=Yii::app()->db->createCommand()->select('category_name')->from('mt_category')->where('cat_id='.$item_detail->category_id)->queryRow();
	//print_r($item_cat['category_name']);
	
	
	//$enabled_commission=Yii::app()->functions->getOptionAdmin('admin_commission_enabled');
	
	$sub_m=Yii::app()->db->createCommand()->select('submerchant_key')->from('mt_merchant_sub')->where('	merchant_id='.$merchant_id)->queryRow();
	$iyzipay_submerchant_key = isset($sub_m['submerchant_key'])?$sub_m['submerchant_key']:"";
	if($iyzipay_submerchant_key=="")
	   $iyzipay_submerchant_key=yii::app()->functions->getOptionAdmin('iyzipay_submerchant_key');
//echo $iyzipay_submerchant_key;exit;	
$firstBasketItem = new \Iyzipay\Model\BasketItem();
$firstBasketItem->setId($item_detail->item_id);//use product id
$firstBasketItem->setName($items['item_name']);
$firstBasketItem->setCategory1($item_cat['category_name']);// use product category
$firstBasketItem->setSubMerchantKey($iyzipay_submerchant_key);	//added by nancy
//$firstBasketItem->setSubMerchantPrice(round($merchant_earnings,2)); //added by nancy
$firstBasketItem->setSubMerchantPrice($total_price_item - round(($total_price_item*$data['percent_commision'])/100,2)); //added by nancy
$firstBasketItem->setItemType(\Iyzipay\Model\BasketItemType::PHYSICAL);
$firstBasketItem->setPrice($total_price_item);//use product price
$basketItems[] = $firstBasketItem;
}

//shipping
if($delivery_price > 0){
    $BasketItem = new \Iyzipay\Model\BasketItem();
    $BasketItem->setId("0");
    $BasketItem->setName('Shipping Charge');
    $BasketItem->setCategory1('Shipping Charge');
    $BasketItem->setItemType(\Iyzipay\Model\BasketItemType::PHYSICAL);
    $BasketItem->setPrice($delivery_price);
    $BasketItem->setSubMerchantKey($iyzipay_submerchant_key);	//added by nancy
    $BasketItem->setSubMerchantPrice($delivery_price - round(($delivery_price*$data['percent_commision'])/100,2)); //added by nancy
    $basketItems[] = $BasketItem;
}

$request->setBasketItems($basketItems);
# make request
$checkoutFormInitialize = \Iyzipay\Model\CheckoutFormInitialize::create($request, Config::options());
		   ?>		   
<div id="iyzipay-checkout-form" class="<?php echo $admin_iyzipay_form_style;?>">
  <?php print_r($checkoutFormInitialize->getCheckoutFormContent()); ?>
</div>		   
<?php 
		   /*ends*/
		   
	   }
   } else $error=Yii::t("default","Credential not yet been set.");
}
/*print_r($iyzipay_con[$iyzipay_con['mode']]['iyzipay_web']);
print_r($iyzipay_con[$iyzipay_con['mode']]['api_key']);
print_r($iyzipay_con[$iyzipay_con['mode']]['secret_key']);
print_r($iyzipay_con['mode']);*/
//echo "here";print_r($_POST);exit;
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
<?php if($admin_iyzipay_form_style == "popup"){?>
<div class="sections section-grey2 section-orangeform">  
  <div class="container">       
    <div class="row top30">       
      <div class="inner">          <h1>
          <?php echo t("Pay using iyzipay")?></h1>          
        <div class="box-grey rounded">	                      
          <?php if ( !empty($error)):?>            
          <p class="text-danger">
            <?php echo $error;?>
          </p>             
          <?php else :?>              
          <p>
            <?php echo t("Please wait while we redirect you to iyzipay.")?>
          </p>          
          <?php endif;?>                          
        </div> 
        <!--box-->       
      </div> 
      <!--inner-->    
    </div> 
    <!--row-->  
  </div> 
  <!--container-->
</div>
<!-- sections-->
<?php } ?>