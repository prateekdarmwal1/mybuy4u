<?php
/**
 * Paypal.php
 * Created by Rob Mcvey on 2013-07-04.
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice
 *
 * @copyright     Rob Mcvey on 2013-07-04.
 * @link          www.copify.com
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
App::uses('CakeRequest', 'Network');
App::uses('HttpSocket', 'Network/Http');

/**
 * Paypal Exception classes
 */
class PaypalException extends CakeException {}

/**
 * PaypaliRedirect Exception classes
 */
class PaypalRedirectException extends CakeException {}

/**
 * Paypal class
 */
class PayComponent extends Component
{

/**
 * Target version for "Classic" Paypal API
 */
	protected $paypalClassicApiVersion = '53.0';

/**
 * Live or sandbox
 */
	protected $sandboxMode = true;

/**
 * API credentials - nvp username
 */
	protected $nvpUsername = 'hi';

/**
 * API credentials - nvp password
 */
	protected $nvpPassword = 'SRJUWN8GSETLTDUS';

/**
 * API credentials - nvp signature
 */
	protected $nvpSignature = 'AFcWxV21C7fd0v3bYYYRCpSSRl31A5wp9cK38oSz4iXM9AlUTKSml2ja';

/**
 * API credentials - nvp token
 */
    protected $nvpToken = null;

/**
 * API credentials - Adaptive App ID
 */
    protected $adaptiveAppID = null;

/**
 * API credentials - Adaptive User ID
 */
    protected $adaptiveUserID = null;

/**
 * API credentials - Application id
 */
	protected $oAuthAppId = null;

/**
 * API credentials - oAuth client id
 */
	protected $oAuthClientId = null;

/**
 * API credentials - oAuth secret
 */
	protected $oAuthSecret = null;

/**
 * API credentials - oAuth access token
 */
	protected $oAuthAccessToken = null;

/**
 * Live endpoint for REST API
 */
	protected $liveRestEndpoint = 'https://api.paypal.com';

/**
 * Sandbox endpoint for REST API
 */
	protected $sandboxRestEndpoint = 'https://api.sandbox.paypal.com';

/**
 * Live endpoint for Classic API
 */
	protected $liveClassicEndpoint = 'https://api-3t.sandbox.paypal.com/nvp';

/**
 * Sandbox endpoint for Classic API
 */
	protected $sandboxClassicEndpoint = 'https://api-3t.sandbox.paypal.com/nvp';

/**
 * Live endpoint for Adaptive Accounts API
 */
    protected $liveAdaptiveAccountsEndpoint = 'https://svcs.paypal.com/AdaptiveAccounts/';

/**
 * Sandbox endpoint for Adaptive Accounts API
 */
    protected $sandboxAdaptiveAccountsEndpoint = 'https://svcs.sandbox.paypal.com/AdaptiveAccounts/';

/**
 * Live endpoint for Paypal web login (used in classic paypal payments)
 */
	protected $livePaypalLoginUri = 'https://www.paypal.com/webscr';

/**
 * Sandbox endpoint for Paypal web login (used in classic paypal payments)
 */
	protected $sandboxPaypalLoginUri = 'https://www.sandbox.paypal.com/webscr';

/**
 * More descriptive API error messages. Error code and message.
 *
 * @var array
 */
	protected $errorMessages = array();

/**
 * Redirect error codes
 *
 * @var array
 */
	protected $redirectErrors = array(10411, 10412, 10422, 10445, 10486);

/**
 * HttpSocket utility class
 */
	public $HttpSocket = null;

/**
 * CakeRequest
 */
	public $CakeRequest = null;

/**
 * Constructor. Takes API credentials, and other properties to set (e.g sandbox mode)
 *
 * @param array $config An array of properties to overide (e.g the API signature)
 * @return void
 * @author Rob Mcvey
 **/
	public function __construct($config = array()) {
		if (!empty($config)) {
			foreach ($config as $property => $value) {
				if (property_exists($this, $property)) {
					$this->{$property} = $value;
				}
			}
		}
		// Sets errorMessages instance var with localization
		$this->errorMessages = array(
			10411 => __('The Express Checkout transaction has expired and the transaction needs to be restarted'),
			10412 => __('You may have made a second call for the same payment or you may have used the same invoice ID for seperate transactions.'),
			10422 => __('Please use a different funcing source.'),
			10445 => __('An error occured, please retry the transaction.'),
			10486 => __('This transaction couldn\'t be completed. Redirecting to payment gateway'),
			10500 => __('You have not agreed to the billing agreement.'),
			10501 => __('The billing agreement is disabled or inactive.'),
			10502 => __('The credit card used is expired.'),
			10505 => __('The transaction was refused because the AVS response returned the value of N, and the merchant account is not able to accept such transactions.'),
			10507 => __('The payment gateway account is restricted.'),
			10509 => __('You must submit an IP address of the buyer with each API call.'),
			10511 => __('The merchant selected a value for the PaymentAction field that is not supported.'),
			10519 => __('The credit card field was blank.'),
			10520 => __('The total amount and item amounts do not match.'),
			10534 => __('The credit card entered is currently restricted by the payment gateway.'),
			10536 => __('The merchant entered an invoice ID that is already associated with a transaction by the same merchant. Attempt with a new invoice ID'),
			10537 => __('The transaction was declined by the country filter managed by the merchant.'),
			10538 => __('The transaction was declined by the maximum amount filter managed by the merchant.'),
			10539 => __('The transaction was declined by the payment gateway.'),
			10541 => __('The credit card entered is currently restricted by the payment gateway.'),
			10544 => __('The transaction was declined by the payment gateway.'),
			10545 => __('The transaction was declined by payment gateway because of possible fraudulent activity.'),
			10546 => __('The transaction was declined by payment gateway because of possible fraudulent activity on the IP address.'),
			10548 => __('The merchant account attempting the transaction is not a business account.'),
			10549 => __('The merchant account attempting the transaction is not able to process Direct Payment transactions. '),
			10550 => __('Access to Direct Payment was disabled for your account.'),
			10552 => __('The merchant account attempting the transaction does not have a confirmed email address with the payment gateway.'),
			10553 => __('The merchant attempted a transaction where the amount exceeded the upper limit for that merchant.'),
			10554 => __('The transaction was declined because of a merchant risk filter for AVS. Specifically, the merchant has set to decline transaction when the AVS returned a no match (AVS = N).'),
			10555 => __('The transaction was declined because of a merchant risk filter for AVS. Specifically, the merchant has set the filter to decline transactions when the AVS returns a partial match.'),
			10556 => __('The transaction was declined because of a merchant risk filter for AVS. Specifically, the merchant has set the filter to decline transactions when the AVS is unsupported.'),
			10747 => __('The merchant entered an IP address that was in an invalid format. The IP address must be in a format such as 123.456.123.456.'),
			10748 => __('The merchant\'s configuration requires a CVV to be entered, but no CVV was provided with this transaction.'),
			10751 => __('The merchant provided an address either in the United States or Canada, but the state provided is not a valid state in either country.'),
			10752 => __('The transaction was declined by the issuing bank, not the payment gateway. The merchant should attempt another card.'),
			10754 => __('The transaction was declined by the payment gateway.'),
			10760 => __('The merchant\'s country of residence is not currently supported to allow Direct Payment transactions.'),
			10761 => __('The transaction was declined because the payment gateway is currently processing a transaction by the same buyer for the same amount. Can occur when a buyer submits multiple, identical transactions in quick succession.'),
			10762 => __('The CVV provided is invalid. The CVV is between 3-4 digits long.'),
			10764 => __('Please try again later. Ensure you have passed the correct CVV and address info for the buyer. If creating a recurring profile, please try again by passing a init amount of 0.'),
			12000 => __('Transaction is not compliant due to missing or invalid 3-D Secure authentication values. Check ECI, ECI3DS, CAVV, XID fields.'),
			12001 => __('Transaction is not compliant due to missing or invalid 3-D Secure authentication values. Check ECI, ECI3DS, CAVV, XID fields.'),
			15001 => __('The transaction was rejected by the payment gateway because of excessive failures over a short period of time for this credit card.'),
			15002 => __('The transaction was declined by payment gateway.'),
			15003 => __('The transaction was declined because the merchant does not have a valid commercial entity agreement on file with the payment gateway.'),
			15004 => __('The transaction was declined because the CVV entered does not match the credit card.'),
			15005 => __('The transaction was declined by the issuing bank, not the payment gateway. The merchant should attempt another card.'),
			15006 => __('The transaction was declined by the issuing bank, not the payment gateway. The merchant should attempt another card.'),
			15007 => __('The transaction was declined by the issuing bank because of an expired credit card. The merchant should attempt another card.'),
		);
	}

/**
 * GetVerifiedStatus
 * The GetVerifiedStatus API operation is used to determine whether a user is verified or unverified.
 *
 * @author Chris Green
 * @param string $email Email address of the buyer
 * @return array Response array
 **/
    public function getVerifiedStatus($email) {
        if (!$this->HttpSocket) {
            $this->HttpSocket = new HttpSocket();
        }
        $headers = array(
            'X-PAYPAL-SANDBOX-EMAIL-ADDRESS' => $this->nvpUsername,
            'X-PAYPAL-SECURITY-PASSWORD' => $this->nvpPassword,
            'X-PAYPAL-SECURITY-SIGNATURE' => $this->nvpSignature,
            'X-PAYPAL-APPLICATION-ID' => $this->adaptiveAppID,
            'X-PAYPAL-REQUEST-DATA-FORMAT' => 'NV',
            'X-PAYPAL-RESPONSE-DATA-FORMAT' => 'JSON',
            'X-PAYPAL-SECURITY-USERID' => $this->adaptiveUserID,
        );
        $query = array(
            'accountIdentifier.emailAddress' => $email,
            'matchCriteria' => 'NONE',
            'requestEnvelope.errorLanguage' => 'en_GB'
        );
        $endPoint = $this->getAdaptiveAccountsEndpoint();
        $endPoint .= 'GetVerifiedStatus';
        $response = $this->HttpSocket->post($endPoint, $query, array('header' => $headers));
        $parsed = json_decode($response, true);
        if(in_array($parsed['responseEnvelope']['ack'], array('Success', 'SuccessWithWarning'))) {
            return $parsed;
        } else if ($parsed['responseEnvelope']['ack'] == 'Failure' && isset($parsed['error'])) {
            throw new PaypalException(__d('paypal', $parsed['error'][0]['message']));
        } else {
            throw new PaypalException(__d('paypal', 'An error occured while getting the status of your account.'));
        }
    }

/**
 * Returns custom error message if there are any set for the error code passed in with the parsed response.
 * Returns the long message in the response otherwise.
 *
 * @author Chris Green
 * @param  array $parsed  Parsed response
 * @return string         The error message
 */
	public function getErrorMessage($parsed) {
		if (array_key_exists($parsed['L_ERRORCODE0'], $this->errorMessages)) {
			return $this->errorMessages[$parsed['L_ERRORCODE0']];
		}
		return $parsed['L_LONGMESSAGE0'];
	}

/**
 * SetExpressCheckout
 * The SetExpressCheckout API operation initiates an Express Checkout transaction.
 *
 * @param array $order Takes an array order (See tests for supported fields).
 * @return string Will return the full URL to redirect the user to.
 * @author Rob Mcvey
 **/
    public function setExpressCheckout($order) {

        try {
            // Build the NVPs
            $nvps = $this->buildExpressCheckoutNvp($order);

            // HttpSocket
            if (!$this->HttpSocket) {
                $this->HttpSocket = new HttpSocket();
            }
            // Classic API endpoint
            $endPoint = $this->getClassicEndpoint();

            // Make a Http request for a new token
            $response = $this->HttpSocket->post($endPoint , $nvps);

            // Parse the results
            $parsed = $this->parseClassicApiResponse($response);

            // Handle the resposne
            if (isset($parsed['TOKEN']) && $parsed['ACK'] == "Success")  {
                return $this->expressCheckoutUrl($parsed['TOKEN']);
            }
            else if ($parsed['ACK'] == "Failure" && isset($parsed['L_LONGMESSAGE0']))  {
                throw new PaypalException($this->getErrorMessage($parsed));
            }
            else {
                throw new PaypalException(__d('paypal' , 'There was an error while connecting to Paypal'));
            }
        } catch (SocketException $e) {
            throw new PaypalException(__d('paypal', 'There was a problem initiating the transaction, please try again.'));
        }
	}

/**
 * GetExpressCheckoutDetails
 * Call GetExpressCheckoutDetails to obtain customer information
 * e.g. for customer review before payment
 *
 * @param string $token The token for this purchase (from Paypal, see SetExpressCheckout)
 * @return array $parsed Returns an array containing details of the transaction/buyer
 * @author Rob Mcvey
 **/
	public function getExpressCheckoutDetails($token) {
        try {
            // Build the NVPs (Named value pairs)
            $nvps = array(
                'METHOD' => 'GetExpressCheckoutDetails' ,
                'VERSION' => $this->paypalClassicApiVersion,
                'TOKEN' => $token,
                'USER' => $this->nvpUsername,
                'PWD' => $this->nvpPassword,
                'SIGNATURE' => $this->nvpSignature,
            );
            // HttpSocket
            if (!$this->HttpSocket) {
                $this->HttpSocket = new HttpSocket();
            }
            // Classic API endpoint
            $endPoint = $this->getClassicEndpoint();

            // Make a Http request for a new token
            $response = $this->HttpSocket->post($endPoint , $nvps);

            // Parse the results
            $parsed = $this->parseClassicApiResponse($response);

            // Handle the resposne
            if (isset($parsed['TOKEN']) && $parsed['ACK'] == "Success")  {
                return $parsed;
            }
            else if ($parsed['ACK'] == "Failure" && isset($parsed['L_LONGMESSAGE0']))  {
                throw new PaypalException($this->getErrorMessage($parsed));
            }
            else {
                throw new PaypalException(__d('paypal' , 'There was an error while connecting to Paypal'));
            }
        } catch (SocketException $e) {
            throw new PaypalException(__d('paypal', 'There was a problem getting your details, please try again.'));
        }
	}

/**
 * DoExpressCheckoutPayment
 * The DoExpressCheckoutPayment API operation completes an Express Checkout transaction
 *
 * @param array $order Takes an array order (See tests for supported fields).
 * @param string $token The token for this purchase (from Paypal, see SetExpressCheckout)
 * @param string $payerId The ID of the Paypal user making the purchase
 * @return array Details of the completed transaction
 * @author Rob Mcvey
 **/
	public function doExpressCheckoutPayment($order, $token , $payerId) {
        try {
            // Build the NVPs
            $nvps = $this->buildExpressCheckoutNvp($order);

            // When we call DoExpressCheckoutPayment, there are 3 NVPs that are different;
            $keysToAdd = array(
                'METHOD' => 'DoExpressCheckoutPayment',
                'TOKEN' => $token,
                'PAYERID' => $payerId,
            );

            // Add/overite, we now habe our final NVPs
            $finalNvps = array_merge($nvps, $keysToAdd);

            // HttpSocket
            if (!$this->HttpSocket) {
                $this->HttpSocket = new HttpSocket();
            }
            // Classic API endpoint
            $endPoint = $this->getClassicEndpoint();

            // Make a Http request for a new token
            $response = $this->HttpSocket->post($endPoint , $finalNvps);

            // Parse the results
            $parsed = $this->parseClassicApiResponse($response);

            // Handle the resposne
            if (isset($parsed['TOKEN']) && $parsed['ACK'] == "Success")  {
                return $parsed;
            }
            else if ($parsed['ACK'] == "Failure" && isset($parsed['L_LONGMESSAGE0']))  {
                if (in_array($parsed['L_ERRORCODE0'], $this->redirectErrors) && isset($parsed['TOKEN'])) {
                    throw new PaypalRedirectException($this->getErrorMessage($parsed));
                }
                throw new PaypalException($this->getErrorMessage($parsed));
            }
            else {
                throw new PaypalException(__d('paypal' , 'There was an error completing the payment'));
            }
        } catch (SocketException $e) {
            throw new PaypalException(__d('paypal','There was a problem processing the transaction, please try again.'));
        }
	}

/**
 * DoDirectPayment
 * The DoDirectPayment API Operation enables you to process a credit card payment.
 *
 * @param array $payment Credit card and amount details to process
 * @return void
 * @author Rob Mcvey
 **/
	public function doDirectPayment($payment) {

        try {
            $nvps = $this->formatDoDirectPaymentNvps($payment);

            // HttpSocket
            if (!$this->HttpSocket) {
                $this->HttpSocket = new HttpSocket();
            }
            // Classic API endpoint
            $endPoint = $this->getClassicEndpoint();

            // Make a Http request for a new token
            $response = $this->HttpSocket->post($endPoint , $nvps);

            // Parse the results
            $parsed = $this->parseClassicApiResponse($response);

            // Handle the resposne
            if (isset($parsed['ACK']) && $parsed['ACK'] == "Success")  {
                return $parsed;
            }
            else if ($parsed['ACK'] == "Failure" && isset($parsed['L_LONGMESSAGE0']))  {
                throw new PaypalException($this->getErrorMessage($parsed));
            }
            else {
                throw new PaypalException(__d('paypal' , 'There was an error processing the card payment'));
            }
        } catch (SocketException $e) {
            throw new PaypalException(__d('paypal', 'There was a problem processing your card, please try again.'));
        }
	}

/**
 * Takes a payment array and formats in to the minimum NVPs to complete a payment
 *
 * @param array Credit card/amount information (see tests)
 * @return array Formatted array of Paypal NVPs for DoDirectPayment
 * @author Rob Mcvey
 **/
	public function formatDoDirectPaymentNvps($payment) {
		// IP Address
		if (!$this->CakeRequest) {
			$this->CakeRequest = new CakeRequest();
		}
		$ipAddress = $this->CakeRequest->clientIp();
		if (empty($ipAddress)) {
			throw new PaypalException(__d('paypal' , 'Could not detect client IP address'));
		}

		// Credit card number
		if (!isset($payment['card'])) {
			throw new PaypalException(__d('paypal' , 'Not a valid credit card number'));
		}
		$payment['card'] = preg_replace("/\s/" , "" , $payment['card']);

		// Credit card number
		if (!isset($payment['cvv'])) {
			throw new PaypalException(__d('paypal' , 'You must include the 3 digit security number'));
		}
		$payment['cvv'] = preg_replace("/\s/" , "" , $payment['cvv']);

		// Amount
		if (!isset($payment['amount'])) {
			throw new PaypalException(__d('paypal' , 'Must specify an "amount" to charge'));
		}

		// Expiry
		if (!isset($payment['expiry'])) {
			throw new PaypalException(__d('paypal' , 'Must specify an expiry date'));
		}
		$dateKeys = array_keys($payment['expiry']);
		sort($dateKeys); // Sort alphabetcially
		if ($dateKeys != array('M' , 'Y')) {
			throw new PaypalException(__d('paypal' , 'Must include a M and Y in expiry date'));
		}
		$month = $payment['expiry']['M'];
		$year = $payment['expiry']['Y'];
		$expiry = sprintf('%d%d' , $month, $year);

		$nvps = array(
			'METHOD' => 'DoDirectPayment',
			'VERSION' => $this->paypalClassicApiVersion,
			'USER' => $this->nvpUsername,
			'PWD' => $this->nvpPassword,
			'SIGNATURE' => $this->nvpSignature,
			'IPADDRESS' => $ipAddress, 		// Required
			'AMT' => $payment['amount'], 		// The total cost of the transaction
			'CURRENCYCODE' => 'GBP',		// A 3-character currency code
			'RECURRING' => 'N',			// Recurring flag
			'ACCT' => $payment['card'],		// Numeric characters only with no spaces
			'EXPDATE' => $expiry,			// MMYYYY
			'CVV2' => $payment['cvv'],		// xxx
			'FIRSTNAME' => '',			// Required
			'LASTNAME' => '', 			// Required
			'STREET' => '', 			// Required
			'CITY' => '', 				// Required
			'STATE' => '', 				// Required
			'COUNTRYCODE' => '',			// Required 2 single-byte characters
			'ZIP' => '', 				// Required
		);
		return $nvps;
	}

/**
 * Formats the order array to Paypal nvps
 *
 * @param array $order Takes an array order (See tests for supported fields).
 * @return array Formatted array of Paypal NVPs for setExpressCheckout
 * @author Rob Mcvey
 **/
	public function buildExpressCheckoutNvp($order) {
		if (empty($order) || !is_array($order)) {
			throw new PaypalException(__d('paypal' , 'You must pass a valid order array'));
		}
		if (!isset($order['return']) || !isset($order['cancel'])) {
			throw new PaypalException(__d('paypal' , 'Valid "return" and "cancel" urls must be provided'));
		}
		if (!isset($order['currency']))  {
			throw new PaypalException(__d('paypal' , 'You must provide a currency code'));
		}
		$nvps = array(
			'METHOD' => 'SetExpressCheckout',
			'VERSION' => $this->paypalClassicApiVersion,
			'PAYMENTREQUEST_0_PAYMENTACTION' => 'Sale',
			'USER' => $this->nvpUsername,
			'PWD' => $this->nvpPassword,
			'SIGNATURE' => $this->nvpSignature,
			'RETURNURL' => $order['return'],
			'CANCELURL' => $order['cancel'],
			'PAYMENTREQUEST_0_CURRENCYCODE' => $order['currency'],
			'PAYMENTREQUEST_0_DESC' => $order['description'],
		);

		// Custom field?
		if (isset($order['custom'])) {
			$nvps['PAYMENTREQUEST_0_CUSTOM'] = $order['custom'];
		}

		// Add up each item and calculate totals
		if (isset($order['items']) && is_array($order['items'])) {
			$items_subtotal = array_sum(Hash::extract($order , 'items.{n}.subtotal'));
			$items_shipping = array_sum(Hash::extract($order , 'items.{n}.shipping'));
			$items_tax = array_sum(Hash::extract($order , 'items.{n}.tax'));
			$items_total = array_sum(array($items_subtotal , $items_tax, $items_shipping));
			$nvps['PAYMENTREQUEST_0_ITEMAMT'] = $items_subtotal;
			$nvps['PAYMENTREQUEST_0_SHIPPINGAMT'] = $items_shipping;
			$nvps['PAYMENTREQUEST_0_TAXAMT'] = $items_tax;
			$nvps['PAYMENTREQUEST_0_AMT'] = $items_total;
			// Paypal only supports 10 items in express checkout
			if (count($order['items']) > 10) {
				return $nvps;
			}
			foreach ($order['items'] as $m => $item) {
				$nvps["L_PAYMENTREQUEST_0_NAME$m"] = $item['name'];
				$nvps["L_PAYMENTREQUEST_0_DESC$m"] = $item['description'];
				$nvps["L_PAYMENTREQUEST_0_TAXAMT$m"] = $item['tax'];
				$nvps["L_PAYMENTREQUEST_0_AMT$m"] = $item['subtotal'];
				$nvps["L_PAYMENTREQUEST_0_QTY$m"] = 1;
			}
		}
		return $nvps;
	}

/**
 * Returns the Paypal REST API endpoint
 *
 * @return string
 * @author Rob Mcvey
 **/
	public function getRestEndpoint() {
		if ($this->sandboxMode) {
			return $this->sandboxRestEndpoint;
		}
		return $this->liveRestEndpoint;
	}

/**
 * Returns the Paypal Classic API endpoint
 *
 * @return string
 * @author Rob Mcvey
 **/
	public function getClassicEndpoint() {
		if ($this->sandboxMode) {
			return $this->sandboxClassicEndpoint;
		}
		return $this->liveClassicEndpoint;
	}

/**
 * Returns Paypal Adaptive Accounts API endpoint
 *
 * @author Chris Green
 * @return string
 **/
	public function getAdaptiveAccountsEndpoint() {
		if ($this->sandboxMode) {
			return $this->sandboxAdaptiveAccountsEndpoint;
		}
		return $this->liveAdaptiveAccountsEndpoint;
	}


/**
 * Returns the Paypal login URL for express checkout
 *
 * @return string
 * @author Rob Mcvey
 **/
	public function getPaypalLoginUri() {
		if ($this->sandboxMode) {
			return $this->sandboxPaypalLoginUri;
		}
		return $this->livePaypalLoginUri;
	}

/**
 * Build the login url for an express checkout payment, user is redirected to this
 *
 * @param string $token
 * @return string
 * @author Rob Mcvey
 **/
	public function expressCheckoutUrl($token) {
		$endpoint = $this->getPaypalLoginUri();
		return "$endpoint?cmd=_express-checkout&token=$token";
	}

/**
 * Parse the body of the reponse from setExpressCheckout
 *
 * @param string A URL encoded response from Paypal
 * @return array Nicely parsed array
 * @author Rob Mcvey
 **/
	public function parseClassicApiResponse($response) {
		parse_str($response , $parsed);
		return $parsed;
	}

}