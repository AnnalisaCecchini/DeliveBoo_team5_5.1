@extends('layouts.client')
@section("content")
    <div id="order-title">
        <h1>OK! L'ordine è stato preso in carico. Arriveremo il più presto possibile</h1>
        <div class="order-btn-container index-search">
            <div id="width-200" class="button index-search main-btn"><a class="white"  href="{{ url('/') }}">Homepage</a></div>
        </div>
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