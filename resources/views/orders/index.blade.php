@extends('layouts.app')

@section('content')
<style>
    #card-number, #cvv, #expiration-date {
        background: white;
        height: 38px;
        border: 1px solid #CED4DA;
        padding: .375rem .75rem;
        border-radius: .25rem;
    }
</style>
<div class="container">
        {{-- in case of success --}}
        @if (session('success_message'))
            <div class="alert alert-success">
                {{ session('success_message') }}
            </div>
        @endif

        {{-- in case of error --}}
        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

    <h2>Payment</h2>
    <form action="{{ route('orders.complete') }}" method="POST" id="payment-form">
        @csrf
        @method('POST')
   
        <div class="form-group">
            <label for="name_on_card">Name on Card</label>
            <input type="text" class="form-control" id="name_on_card" name="name_on_card">
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="text" class="form-control" id="amount" name="amount" value="{{$total}}">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="cc_number">Credit Card Number</label>
            <div class="form-group" id="card-number">
            </div>
        </div>
        <div class="col-md-3">
            <label for="expiry">Expiry</label>
            <div class="form-group" id="expiration-date">
            </div>
        </div>

        <div class="col-md-3">
            <label for="cvv">CVV</label>

            <div class="form-group" id="cvv">

            </div>
        </div>

        <div class="spacer"></div>
        <div id="paypal-button"></div>
        <div class="spacer"></div>
        <input id="nonce" name="payment_method_nonce" type="hidden" />
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-success">Submit Payment</button>
        </div>
    </form>
</div>

<script src="https://js.braintreegateway.com/web/3.73.1/js/client.min.js"></script>
<script src="https://js.braintreegateway.com/web/3.73.1/js/hosted-fields.min.js"></script>
<script>
  var form = document.querySelector('#payment-form');
  var submit = document.querySelector('input[type="submit"]');

  braintree.client.create({
    authorization: '{{ $token }}'
  }, function (clientErr, clientInstance) {
    if (clientErr) {
      console.error(clientErr);
      return;
    }

    // This example shows Hosted Fields, but you can also use this
    // client instance to create additional components here, such as
    // PayPal or Data Collector.

    braintree.hostedFields.create({
      client: clientInstance,
      styles: {
        'input': {
          'font-size': '14px'
        },
        'input.invalid': {
          'color': 'red'
        },
        'input.valid': {
          'color': 'green'
        }
      },
      fields: {
        number: {
          selector: '#card-number',
          placeholder: '**** **** **** 1111'
        },
        cvv: {
          selector: '#cvv',
          placeholder: '****'
        },
        expirationDate: {
          selector: '#expiration-date',
          placeholder: '**/**22'
        }
      }
    }, function (hostedFieldsErr, hostedFieldsInstance) {
      if (hostedFieldsErr) {
        console.error(hostedFieldsErr);
        return;
      }

      //submit.removeAttribute('disabled');

      form.addEventListener('submit', function (event) {
        event.preventDefault();

        hostedFieldsInstance.tokenize(function (tokenizeErr, payload) {
          if (tokenizeErr) {
            console.error(tokenizeErr);
            return;
          }

          // If this was a real integration, this is where you would
          // send the nonce to your server.
          /* console.log('Got a nonce: ' + payload.nonce); */
          document.querySelector('#nonce').value = payload.nonce;
          form.submit();
        });
      }, false);
    });
  });
</script>

@endsection
