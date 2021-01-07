<?php
$this->renderPartial('/front/banner-receipt',array(
   'h1'=>t("Restaurant Signup"),
   'sub_text'=>t("step 3 of 4")
));

/*PROGRESS ORDER BAR*/
$this->renderPartial('/front/progress-merchantsignup',array(
   'step'=>3,
   'show_bar'=>true
));

$admin_iyzipay_form_style=yii::app()->functions->getOptionAdmin('admin_iyzipay_form_style');
$iyzipay_submerchant_key=yii::app()->functions->getOptionAdmin('iyzipay_submerchant_key');

$data='';
$data2='';
$params='';
$error='';
$merchant_id='';
$ok=false;
//print_r($_POST);
$my_token=isset($_GET['token'])?$_GET['token']:'';
session_start();
$_SESSION['merchant_token']=$my_token;
$data=Yii::app()->functions->getMerchantByToken($my_token);

$package_id=isset($_GET['package_id'])?$_GET['package_id']:'';

if (isset($_GET['renew'])) {
	if ($new_info=Yii::app()->functions->getPackagesById($package_id)){		    
	    $data['package_price']=$new_info['price'];
	    if ( $new_info['promo_price']>0){
		    $data['package_price']=$new_info['promo_price'];
	    }			
	    $data['package_name']=$new_info['title'];
	    $data['package_id']=$package_id;
		$package_string="&package_id_renew=".$package_id."&renew=1";
	}
}
if(isset($package_string)){
	$package_string=$package_string;
}else{
	$package_strin="";
}

if ( $data){
   $iyzipay_con=Yii::app()->functions->getiyzipayConnectionAdmin();  
   
   //dump($iyzipay_con);die();
  // print_r(Yii::app()->basePath."/components/iyzipay/config.php");
   if ( !empty($iyzipay_con[$iyzipay_con['mode']]['api_key'])){   	     
	   if (is_array($data) && count($data)>=1){
	   	   $x=0;	   	   	   	   
	       
		   /*starts*/
		  // $client_address_details=Yii::app()->db->createCommand()->select('*')->from('mt_address_book')->where('client_id='.$data['client_id'])->queryRow();
		   $buyer_details=Yii::app()->functions->getMerchantByToken($my_token);
		   $buyer_firstname= !empty($buyer_details['contact_name']) ? $buyer_details['contact_name'] : 'NOT PROVIDED';
		   $buyer_lastname= 'NOT PROVIDED';
		   $buyer_phone= !empty($buyer_details['contact_phone']) ? $buyer_details['contact_phone'] : 'NOT PROVIDED';
		   $buyer_email= !empty($buyer_details['contact_email']) ? $buyer_details['contact_email'] : 'NOT PROVIDED';
		   $buyer_city= !empty($buyer_details['city']) ? $buyer_details['city'] : 'NOT PROVIDED';
		   $buyer_country= !empty($buyer_details['country_name']) ? $buyer_details['country_name'] : 'NOT PROVIDED';
		   $buyer_zipcode= !empty($buyer_details['post_code']) ? $buyer_details['post_code'] : 'NOT PROVIDED';
		   $buyer_complete_address=$buyer_details['street'].", ".$buyer_details['city'].", ".$buyer_details['state'].", ".$buyer_details['post_code'].", ".$buyer_details['country_name'];
		   
		   $amount_to_pay=isset($data['package_price'])?Yii::app()->functions->standardPrettyFormat($data['package_price']):'';
		/*$amount_to_pay=is_numeric($amount_to_pay)?unPrettyPrice($amount_to_pay*100):'';
		$amount_to_pay=Yii::app()->functions->normalPrettyPrice2($amount_to_pay);*/
		 		   
	//print_r($row['street']); //prints gametitle
	
		/*   $order_data=Yii::app()->functions->getOrder($_GET['id']);
		   require_once(Yii::app()->basePath."/components/iyzipay/config.php");*/
		   
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

$IdentityNumber=(int)mt_rand(10000, 99999).(int)$data['merchant_id']; 
		  # create request class
$request = new \Iyzipay\Request\CreateCheckoutFormInitializeRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
//$request->setConversationId($data['merchant_id']);
$request->setPrice($amount_to_pay);
$request->setPaidPrice($amount_to_pay);
$request->setCurrency(Yii::app()->functions->adminCurrencyCode());
$request->setBasketId($data['merchant_id']);
$request->setPaymentGroup(\Iyzipay\Model\PaymentGroup::PRODUCT);
$request->setCallbackUrl(websiteUrl()."/merchantsignupstep3c?merchant_token_success=".$_SESSION['merchant_token'].$package_string);

$buyer = new \Iyzipay\Model\Buyer();
$buyer->setId($data['merchant_id']);
$buyer->setName(stripslashes($buyer_firstname));
$buyer->setSurname($buyer_lastname);
$buyer->setGsmNumber($buyer_phone);
$buyer->setEmail($buyer_email);
$buyer->setIdentityNumber($IdentityNumber);
$buyer->setRegistrationAddress($buyer_complete_address);
$buyer->setIp($_SERVER['REMOTE_PORT']);
$buyer->setCity($buyer_city);
$buyer->setCountry($buyer_country);
$buyer->setZipCode($buyer_zipcode);
$request->setBuyer($buyer);

$shippingAddress = new \Iyzipay\Model\Address();
$shippingAddress->setContactName($buyer_firstname);
$shippingAddress->setCity($buyer_city);
$shippingAddress->setCountry($buyer_country);
$shippingAddress->setAddress($buyer_complete_address);
$shippingAddress->setZipCode($buyer_zipcode);
$request->setShippingAddress($shippingAddress);

$billingAddress = new \Iyzipay\Model\Address();
$billingAddress->setContactName($buyer_firstname);
$billingAddress->setCity($buyer_city);
$billingAddress->setCountry($buyer_country);
$billingAddress->setAddress($buyer_complete_address);
$billingAddress->setZipCode($buyer_zipcode);
$request->setBillingAddress($billingAddress);

$SubMerchantKey = $iyzipay_submerchant_key;//'hDsWPSEdd9lsSdqbC8Wy0ItHbfA=';//'3irdfd4P2ecGClhp0O/OhskXzj0=';
$basketItems = array();
$firstBasketItem = new \Iyzipay\Model\BasketItem();
$firstBasketItem->setId($data['package_id']);//use product id
$firstBasketItem->setName($data['package_name']);
$firstBasketItem->setCategory1('Membership');// use product category
$firstBasketItem->setSubMerchantKey($SubMerchantKey);	//added by nancy
$firstBasketItem->setSubMerchantPrice($amount_to_pay); //added by nancy
$firstBasketItem->setItemType(\Iyzipay\Model\BasketItemType::PHYSICAL);
$firstBasketItem->setPrice($amount_to_pay);//use product price
$basketItems[0] = $firstBasketItem;
$request->setBasketItems($basketItems);

# make request
$checkoutFormInitialize = \Iyzipay\Model\CheckoutFormInitialize::create($request, Config::options());
		   ?>
		   <div id="iyzipay-checkout-form" class="<?php echo $admin_iyzipay_form_style;?>"><?php print_r($checkoutFormInitialize->getCheckoutFormContent()); ?></div>
		   <?php
		   /*ends*/
		   
	   }
   } else $error=Yii::t("default","Credential not yet been set.");
}
if (isset($_POST)){
	if (is_array($_POST) && count($_POST)>=1){	
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
foreach($item_transactions as $item_transaction){
	$TransactionId=$item_transaction->getPaymentTransactionId();
}
$merchant_token=$_GET['merchant_token_success'];
if('success' == $response->getStatus()){
	$payment_status = $response->getPaymentStatus();
	if ('SUCCESS' == $payment_status) {
	
	// approve payment call to iyzico- by nancy
	$request1 = new \Iyzipay\Request\CreateApprovalRequest();
  $request1->setLocale(\Iyzipay\Model\Locale::TR);
  $request1->setConversationId(uniqid());
  $request1->setPaymentTransactionId($TransactionId);
  
  $approval = \Iyzipay\Model\Approval::create($request1, Config::options());				
	// end iyzico call	
	
	
	
$data=Yii::app()->functions->getMerchantByToken($merchant_token);
$db_ext=new DbExt;

$package_id=isset($_GET['package_id_renew'])?$_GET['package_id_renew']:"";
if (isset($_GET['renew'])) {
	if ($new_info=Yii::app()->functions->getPackagesById($package_id)){		    
	    $data['package_price']=$new_info['price'];
	    if ( $new_info['promo_price']>0){
		    $data['package_price']=$new_info['promo_price'];
	    }			
	    $data['package_name']=$new_info['title'];
	    $data['package_id']=$package_id;
		$package_string="&package_id_renew=".$package_id."&renew=1";
	}
}

$params_logs=array(
	          'package_id'=>$data['package_id'],	          
	          'merchant_id'=>$data['merchant_id'],
	          'price'=>$data['package_price'],
	          'payment_type'=>'iyzipay',
	          'membership_expired'=>$data['membership_expired'],
	          'TRANSACTIONID'=>$TransactionId,
	          'date_created'=>FunctionsV3::dateNow(),
	          'PAYMENTSTATUS'=>$response->getStatus(),
	          'ip_address'=>$_SERVER['REMOTE_ADDR'],
	          'PAYPALFULLRESPONSE'=>$response->getrawResult()
	        );
	        
	        if (isset($_GET['renew'])){	        	
	        	$membership_info=Yii::app()->functions->upgradeMembership($data['merchant_id'],$package_id);
	        	
	        	$params_logs['membership_expired']=$membership_info['membership_expired'];
	        	
	        	$params_update=array(
				  'package_id'=>$package_id,
				  'package_price'=>$membership_info['package_price'],
				  'membership_expired'=>$membership_info['membership_expired'],				  
				  'status'=>'active'
			 	 );					 	 
				 $db_ext->updateData("{{merchant}}",$params_update,'merchant_id',$data['merchant_id']);	     	        
	        }
	        	        
	        $db_ext->insertData("{{package_trans}}",$params_logs);
	        	        
	        $db_ext->updateData("{{merchant}}",
							   array(
							     'payment_steps'=>3,
							     'membership_purchase_date'=>FunctionsV3::dateNow()
							   ),'merchant_id',$data['merchant_id']);							   
	                    
            if (isset($_GET['renew'])){            	
            	header('Location: '. Yii::app()->createUrl('/store/renewsuccesful'));
            } else {
            	
            	/*SEND EMAIL*/
            	FunctionsV3::sendWelcomeEmailMerchant($data);
            	FunctionsV3::sendMerchantActivation($data, $data['activation_key']);
            	
            	header('Location: '. Yii::app()->createUrl("store/merchantsignup",array(
                  'Do'=>"step4",
                  'token'=>$merchant_token
                )));	
            }		
	/*insert data to database neds*/	
  
  
//print_r($api_response);
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
       <div class="inner">
          <h1><?php echo t("Pay using iyzipay")?></h1>
          <div class="box-grey rounded">	
          
          <?php if ( !empty($error)):?>
           <p class="text-danger"><?php echo $error;?></p>  
          <?php else :?> 
           <p><?php echo t("Please wait while we redirect you to iyzipay.")?></p>
		    <div class="top25">
			 <a href="<?php 

			    if (isset($_GET['renew'])) {		 
			    	echo Yii::app()->createUrl('store/merchantsignup',array(
				     'do'=>"step3",
				     'token'=>$my_token,
				     'renew'=>1,
				     'package_id'=>$package_id
				   ));
			    } else {
	 			    echo Yii::app()->createUrl('store/merchantsignup',array(
				      'do'=>"step3",
				      'token'=>$my_token));
			    }
			   
			   ?>">
	         <i class="ion-ios-arrow-thin-left"></i> <?php echo Yii::t("default","Click here to change payment option")?></a>
	         </div>
          <?php endif;?>
               
          </div> <!--box-->
       </div> <!--inner-->
    </div> <!--row-->
  </div> <!--container-->
</div><!-- sections-->
<?php } ?>