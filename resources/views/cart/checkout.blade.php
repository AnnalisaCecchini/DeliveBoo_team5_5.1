@extends('layouts.client')

@section('content')
<div class="container">
    <div class="cart-checkout">
        <h2 class="second-col">Checkout</h2>

        <h4>Shipping Information</h3>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>
                            {{ $error }}
                        </li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('orders.store') }}" method="POST">
            @csrf
            @method('POST')

            <div class="form-group">
                <label for="name">Name</label>
                <input class="rest-input" type="text" id="name" name="name" class="form-control">
            </div>

            <div class="form-group">
                <label for="lastname">Lastname</label>
                <input class="rest-input" type="text" id="lastname" name="lastname" class="form-control">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input class="rest-input" type="text" id="address" name="address" class="form-control">
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input class="rest-input" type="text" id="email" name="email" class="form-control">
            </div>

            <div class="form-group">
                <label for="price">Total Price</label>
                <h3 class="font-weight-bold" name="price"> € {{number_Format($total, 2, ',', '') }}</h3>
            </div>

        
        <button class="button real-btn"><a  id="no-spacing">Order Now</a></button>

       
        </form>
    </div>
</div>
@endsection