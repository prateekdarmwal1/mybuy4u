<?php
/**
 * Example usuage of Paypal Component
 *
 */
App::uses('AppController', 'Controller');

class PaymentsController extends AppController
{

    // Include the Payapl component
    public $components = array('Paypal', 'Auth');

    var $uses = array("PaymentMethod",'BannerAdText','BannerAdImageDetail','HomeSale','SalesDetail','HomeSaleDetail');
    // Example usuage
    public function index()
    {

    }

    public function success()
    {

    }


    // Set the values and begin paypal process
    public function express_checkout($id,$model)
    {
        //$amount=array('10.00','12.00');
        $model_fun= 'get_'.strtolower($model).'s_detail';
        $payment_data = $this->$model->$model_fun($id);
        $amount= $payment_data[$model]['TOTAL_PRICE'];
        try {
            $this->Paypal->amount = $amount;
            $this->Paypal->currencyCode = 'GBP';
            $this->Paypal->returnUrl = Router::url(array('action' => 'get_details/'.$amount.'/'.$id.'/'.$model), true);
            $this->Paypal->cancelUrl = Router::url($this->here, true);
            $this->Paypal->orderDesc = 'For 20 Day advertisement';
            $this->Paypal->itemName = 'For Home Page advertisement';
            $this->Paypal->quantity = 1;

            $id=1;
//            $payment_data=$this->PaymentMethod->get_payment_data($id);

            $this->Paypal->config = array(
                'sandboxtrue' =>false,
                'webscr' => "https://www.paypal.com/webscr/",
                'endpoint' => 'https://api-3t.paypal.com/nvp/',
                'email' =>'taraniduttjoshi_api1.gmail.com',
                'password' => 'B6Z7HK6LPK7NWVU4',
                'signature'=>'AFcWxV21C7fd0v3bYYYRCpSSRl31AvEgytlT9LB5liA4EoqRikyxDhJ4',
                /*
                'password' => 'SRJUWN8GSETLTDUS',
                'email' => 'rajesh_1314256124_biz_api2.gmail.com',
                'signature' => 'AFcWxV21C7fd0v3bYYYRCpSSRl31A5wp9cK38oSz4iXM9AlUTKSml2ja'
                */

            );
//
//            $this->Paypal->sandboxConfig = array(
//                'webscr' => 'https://www.sandbox.paypal.com/webscr/',
//                'endpoint' => 'https://api-3t.sandbox.paypal.com/nvp/',
//                'password' => 'SRJUWN8GSETLTDUS',
//                'email' => 'rajesh_1314256124_biz_api2.gmail.com',
//                'signature' => 'AFcWxV21C7fd0v3bYYYRCpSSRl31A5wp9cK38oSz4iXM9AlUTKSml2ja'
//            );

           /* if ($payment_data['PaymentMethod']["sand_box_mode"]) {
                $this->Paypal->config = $this->Paypal->sandboxConfig;

            }*/
//            $this->Paypal->config = $this->Paypal->sandboxConfig;
            $this->Paypal->config = $this->Paypal->config;
            $this->Paypal->expressCheckout();
        } catch (Exception $e) {
            $this->Session->setFlash($e->getMessage());
            return $this->redirect('index');
        }
    }


    // Use the token in the return URL to fetch details
    public function get_details($amount,$id,$model)
    {
        try {
            $this->autoRender = false;

            // Token and PayerID will be present in URL
            $this->Paypal->token = $this->request->query['token'];
            $this->Paypal->payerId = $this->request->query['PayerID'];

            // At this point, you can let the customer review their order.
            // Use the "getExpressCheckoutDetails" method to fetch details...
            $customer_details = $this->Paypal->getExpressCheckoutDetails($this->Paypal->token);
            /*debug($customer_details);*/

            // Then you must call "doExpressCheckoutPayment" to complete the payment
            $this->Paypal->amount = $amount;
            $this->Paypal->currencyCode = 'GBP';
            $this->Paypal->totalItems = 1;
            $this->Paypal->quantity = 1;
            $response = $this->Paypal->doExpressCheckoutPayment();
            if (($response["AMT"] == $amount)) {
                $this->$model->updateAll( array("$model.IS_ACTIVE" => 1,"$model.IS_PAID" => 1), array("$model.ID" => $id));
                $this->redirect(array('controller' => 'payments', 'action' => 'index'));
            }

        } catch (Exception $e) {
            $this->Session->setFlash($e->getMessage());
            $this->render('success');
        }
    }


    // Do a direct credit card payment
    public function charge_card()
    {
        try {
            $this->Paypal->config = array(

                'webscr' => "https://www.paypal.com/webscr/",
                'endpoint' => 'https://api-3t.paypal.com/nvp/',
                'password' => 'SRJUWN8GSETLTDUS',
                'email' => 'taraniduttjoshi@gmail.com',
                'signature' => 'AFcWxV21C7fd0v3bYYYRCpSSRl31A5wp9cK38oSz4iXM9AlUTKSml2ja'
               /* 'password' => $payment_data['PaymentMethod']["api_secret"],
                'email' => $payment_data['PaymentMethod']["api_key"],
                'signature' => $payment_data['PaymentMethod']["api_signature"],*/
            );

            $this->Paypal->sandboxConfig = array(
                'webscr' => 'https://www.sandbox.paypal.com/webscr/',
                'endpoint' => 'https://api-3t.sandbox.paypal.com/nvp/',
                'password' => 'SRJUWN8GSETLTDUS',
                'email' => 'rajesh_1314256124_biz_api2.gmail.com',
                'signature' => 'AFcWxV21C7fd0v3bYYYRCpSSRl31A5wp9cK38oSz4iXM9AlUTKSml2ja'
            );

           /* if ($payment_data['PaymentMethod']["sand_box_mode"]) {
                $this->Paypal->config = $this->Paypal->sandboxConfig;
            }*/
            $this->Paypal->config = $this->Paypal->sandboxConfig;
//           $this->Paypal->config = $this->Paypal->config;

            /*$this->autoRender = false;*/
            $this->Paypal->amount = 10.00;
            $this->Paypal->currencyCode = 'GBP';
            $this->Paypal->creditCardNumber = '438459997700844'; // Paypal sandbox CC
            $this->Paypal->creditCardCvv = '633';
            $this->Paypal->creditCardExpires = '012020';
            $this->Paypal->creditCardType = 'Visa';
            $result = $this->Paypal->doDirectPayment();
            debug($result);
        } catch (Exception $e) {
            $this->Session->setFlash($e->getMessage());
            return $this->redirect('index');
        }
    }

    public function beforeFilter()
    {
        parent::beforeFilter();

        $this->Auth->allow('index', 'express_checkout', 'get_details', 'charge_card');
    }
}
