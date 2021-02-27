<?php

use Illuminate\Support\Facades\Route;
// Add this use to do the request
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/**
 * Public routes
 */
Route::get('/', 'HomeController@index')->name('homepage');

//Index public route
Route::get('restaurants', 'RestaurantController@index')->name('restaurants.index');

//Show public route
Route::get('restaurants/{slug}', 'RestaurantController@show')->name('restaurants.show');

//Add to cart route
Route::get('/add-to-cart{dish}', 'CartController@add')->name('add');
Route::get('/cart', 'CartController@index')->name('cart.index');
Route::get('/cart/destroy{dishId}', 'CartController@destroy')->name('cart.destroy');
Route::get('/cart/update{dishId}', 'CartController@update')->name('cart.update');
Route::get('/cart/checkout', 'CartController@checkout')->name('cart.checkout');
Route::get('/cart/order', 'CartController@saveCookie')->name('cart.order');


//Order route
Route::resource('orders', 'OrderController');

Route::post('/checkout', function (Request $request) {
    $gateway = new Braintree\Gateway([
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

    if ($result->success) {
        $transaction = $result->transaction;
        // header("Location: transaction.php?id=" . $transaction->id);

        return back()->with('success_message', 'Transaction successful. The ID is:'. $transaction->id);
    } else {
        $errorString = "";

        foreach ($result->errors->deepAll() as $error) {
            $errorString .= 'Error: ' . $error->code . ": " . $error->message . "\n";
        }

        // $_SESSION["errors"] = $errorString;
        // header("Location: index.php");
        return back()->withErrors('An error occurred with the message: '.$result->message);
    }
});


Auth::routes();


Route::prefix('admin')
    ->namespace('Admin')
    ->name('admin.')
    ->middleware('auth')
    ->group(function() {
        // Home Admin -- Log in
        Route::get('/', 'HomeController@index')->name('home');

        // Rotte Restaurant CRUD
        Route::resource('restaurants', 'RestaurantController');

        // Rotte Dish CRUD
        Route::resource('restaurants/{slug}/dishes', 'DishController');


    });