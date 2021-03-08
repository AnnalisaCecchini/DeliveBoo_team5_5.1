<?php
namespace App\Http\Controllers;
use App\Order;
use Braintree\Gateway as Gateway;
use Illuminate\Http\Request;
class BraintreeController extends Controller
{
    public function processpayment(Request $request) 
    {
        $gateway = new \Braintree\Gateway([
            'environment' => config('services.braintree.environment'),
            'merchantId' => config('services.braintree.merchantId'),
            'publicKey' => config('services.braintree.publicKey'),
            'privateKey' => config('services.braintree.privateKey')
        ]);
        // properties of the object
        $amount = $request->amount;
        $nonce = $request->payment_method_nonce;
        $result = $gateway->transaction()->sale([
            'amount' => $amount,
            'paymentMethodNonce' => $nonce,
            'options' => [
                'submitForSettlement' => true
            ]
        ]);
        // dd($result);
              \Cart::clear();
            \Cart::session('_token')->clear();
        if ($result->success) {
            $transaction = $result->transaction;
            // header("Location: transaction.php?id=" . $transaction->id);
            return view('orders.complete')->with('success_message', 'Transaction successful. The ID is:'. $transaction->id);
        } else {
            $errorString = "";
            foreach ($result->errors->deepAll() as $error) {
                $errorString .= 'Error: ' . $error->code . ": " . $error->message . "\n";
            }
            // $_SESSION["errors"] = $errorString;
            // header("Location: index.php");
            return back()->withErrors('An error occurred with the message: '.$result->message);
        }
    }
}