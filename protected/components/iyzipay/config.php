<?php

require_once('IyzipayBootstrap.php');

IyzipayBootstrap::init();

class Config
{
    public static function options()
    {
        $options = new \Iyzipay\Options();
		
    		/*$iyzipay_con=Yii::app()->functions->getiyzipayConnection($merchant_id);    		
    		$options->setApiKey($iyzipay_con[$iyzipay_con['mode']]['api_key']);
        $options->setSecretKey($iyzipay_con[$iyzipay_con['mode']]['secret_key']);
        $options->setBaseUrl($iyzipay_con[$iyzipay_con['mode']]['iyzipay_web']);*/
        
        $iyzipay_con=Yii::app()->functions->getiyzipayConnectionAdmin();  
		    $options->setApiKey($iyzipay_con[$iyzipay_con['mode']]['api_key']);
        $options->setSecretKey($iyzipay_con[$iyzipay_con['mode']]['secret_key']);
        $options->setBaseUrl($iyzipay_con[$iyzipay_con['mode']]['iyzipay_web']);
		
        /*$options->setApiKey("api key");
        $options->setSecretKey("secret key");
        $options->setBaseUrl("https://sandbox-api.iyzipay.com");*/
        return $options;
    }
}