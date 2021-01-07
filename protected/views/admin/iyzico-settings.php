<?php
$enabled_paypal=Yii::app()->functions->getOptionAdmin('admin_enabled_iyzipay');
$paypal_mode=Yii::app()->functions->getOptionAdmin('admin_iyzipay_mode');
$iyzipay_form_style=Yii::app()->functions->getOptionAdmin('admin_iyzipay_form_style');
?>

<div id="error-message-wrapper"></div>

<form class="uk-form uk-form-horizontal forms" id="forms">
<?php echo CHtml::hiddenField('action','saveAdminiyzipaySettings')?>

<!--<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Enabled iyzipay?")?></label>
  <?php 
  echo CHtml::checkBox('admin_enabled_iyzipay',
  $enabled_paypal=="yes"?true:false
  ,array(
    'value'=>"yes",
    'class'=>"icheck"
  ))
  ?> 
</div>-->
  
<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Enabled iyzipay")?>?</label>
  <?php 
  echo CHtml::checkBox('admin_enabled_iyzipay',
  Yii::app()->functions->getOptionAdmin('admin_enabled_iyzipay')=="yes"?true:false
  ,array(
    'value'=>"yes",
    'class'=>"icheck"
  ))
  ?> 
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Mode")?></label>
  <?php 
  echo CHtml::radioButton('admin_iyzipay_mode',
  $paypal_mode=="sandbox"?true:false
  ,array(
    'value'=>"sandbox",
    'class'=>"icheck"
  ))
  ?>
  <?php echo t("Sandbox")?> 
  <?php 
  echo CHtml::radioButton('admin_iyzipay_mode',
  $paypal_mode=="live"?true:false
  ,array(
    'value'=>"live",
    'class'=>"icheck"
  ))
  ?>	
  <?php echo t("Live")?> 
</div>
<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Iyzipay form style")?></label>
  <?php 
  echo CHtml::radioButton('admin_iyzipay_form_style',
  $iyzipay_form_style=="popup"?true:false
  ,array(
    'value'=>"popup",
    'class'=>"icheck"
  ))
  ?>
  <?php echo t("Popup")?> 
  <?php 
  echo CHtml::radioButton('admin_iyzipay_form_style',
  $iyzipay_form_style=="responsive"?true:false
  ,array(
    'value'=>"responsive",
    'class'=>"icheck"
  ))
  ?>	
  <?php echo t("Responsive")?> 
</div>

<!--<div class="uk-form-row">
<label class="uk-form-label"><?php echo Yii::t("default","Card Fee")?></label>
<?php 
echo CHtml::textField('admin_paypal_fee',
Yii::app()->functions->getOptionAdmin('admin_paypal_fee')
,array(
'class'=>"uk-form-width-small numeric_only"
))
?>
</div>-->


<h3><?php echo Yii::t("default","Sandbox")?></h3>
<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","iyzipay api key")?></label>
  <?php 
  echo CHtml::textField('admin_sanbox_iyzipay_api_key',
  Yii::app()->functions->getOptionAdmin('admin_sanbox_iyzipay_api_key')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","iyzipay secret key")?></label>
  <?php 
  echo CHtml::textField('admin_sanbox_iyzipay_secret_key',
  Yii::app()->functions->getOptionAdmin('admin_sanbox_iyzipay_secret_key')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Izyipay Submerchant Key")?></label>  
  <?php 
	echo CHtml::textField('iyzipay_submerchant_key',
	Yii::app()->functions->getOptionAdmin('iyzipay_submerchant_key'),
	array(
	'class'=>"uk-form-width-large",
	'placeholder'=>"Submerchant Key for Iyzipay"         
	))
	?>  
</div>

<!--<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","iyzipay Signature")?></label>
  <?php 
  echo CHtml::textField('admin_sanbox_iyzipay_signature',
  Yii::app()->functions->getOptionAdmin('admin_sanbox_iyzipay_signature')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>-->



<!--<h3><?php echo Yii::t("default","Live")?></h3>
<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Paypal User")?></label>
  <?php 
  echo CHtml::textField('admin_live_paypal_user',
  Yii::app()->functions->getOptionAdmin('admin_live_paypal_user')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Paypal Password")?></label>
  <?php 
  echo CHtml::textField('admin_live_paypal_pass',
  Yii::app()->functions->getOptionAdmin('admin_live_paypal_pass')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Paypal Signature")?></label>
  <?php 
  echo CHtml::textField('admin_live_paypal_signature',
  Yii::app()->functions->getOptionAdmin('admin_live_paypal_signature')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>


<hr>
<h3><?php echo t("Mobile Paypal payment Settings")?></h3>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Enabled Paypal")?>?</label>
  <?php 
  echo CHtml::checkBox('adm_paypal_mobile_enabled',
  getOptionA('adm_paypal_mobile_enabled')=="yes"?true:false
  ,array(
    'value'=>"yes",
    'class'=>"icheck"
  ))
  ?> 
</div>

<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Mode")?></label>
  <?php 
  echo CHtml::radioButton('adm_paypal_mobile_mode',
  getOptionA('adm_paypal_mobile_mode')=="sandbox"?true:false
  ,array(
    'value'=>"sandbox",
    'class'=>"icheck"
  ))
  ?>
  <?php echo t("Sandbox")?>
  <?php 
  echo CHtml::radioButton('adm_paypal_mobile_mode',
  getOptionA('adm_paypal_mobile_mode')=="live"?true:false
  ,array(
    'value'=>"live",
    'class'=>"icheck"
  ))
  ?>	
  <?php echo t("Live")?> 
</div>


<div class="uk-form-row">
  <label class="uk-form-label"><?php echo Yii::t("default","Client ID")?></label>
  <?php 
  echo CHtml::textField('adm_paypal_mobile_clientid',
  getOptionA('adm_paypal_mobile_clientid')
  ,array(
    'class'=>"uk-form-width-large"
  ))
  ?>
</div>-->


<div class="uk-form-row">
<label class="uk-form-label"></label>
<input type="submit" value="<?php echo Yii::t("default","Save")?>" class="uk-button uk-form-width-medium uk-button-success">
</div>

</form>