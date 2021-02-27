<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    
    'braintree' => [
        'environment' => env('BT_ENVIRONMENT', 'sandbox'),
        'merchantId' => env('BT_MERCHANT_ID', 'c54shjc6w3w8x526'),
        'publicKey' => env('BT_PUBLIC_KEY', 'v3tjsk35kq9m2hmh'),
        'privateKey' => env('BT_PRIVATE_KEY', 'bdf9af5aacf9a47a5268e99938d2a3ec'),
    ],
];
