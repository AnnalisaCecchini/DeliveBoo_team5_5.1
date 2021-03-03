@extends('layouts.order')
@section("content")
    <div id="order-title">
        <h1>The order has been taken on charge. We'll arrive as soon as possible!</h1>
        <div class="button"><a href="">Go back to homepage</a></div>
    </div>
    <div class="hero">
        <div class="road">
            <img src="{{asset('img/road.png')}}" alt="">
        </div>
        <div class="delivery">
            <img src="{{asset('img/deliveryboy.png')}}" alt="">
        </div>
    </div>
@endsection