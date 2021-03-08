@extends('layouts.client')

@section('content')
<div class="container" id="cart-index">
     
        <h1 class="second-col">Carrello</h1>

          
                @foreach ($cartDishes as $dish)

                <div class="cart-info-complete">
                    <div class="cart-info">
                        <div class="rest-typology" scope="row">{{ $dish->name }}</div>
                            <div class="price-text"> Prezzo/pz: </div>
                            <div class="rest-typology">€ {{number_Format($dish->price, 2, ',', '') }}</div> 
                           
                        
                    </div>
                    <div class="cart-functionalities">
                            <form  action="{{ route('cart.update', $dish->id) }}">
                                <input id="dish-quantity" name="quantity" type="number" value="{{ $dish->quantity }}">
                                <div class="button"><input  type="submit" value="Salva"></div>
                                <div class="button"> <a  href="{{ route('cart.destroy', $dish->id) }}">Elimina</a> </div>
                            </form>

                    </div>
                </div>
              @endforeach
          
  

        <!-- prezzo totale -->
        <h3 class="text-center mt-3">
            <span class="font-weight-bold">Prezzo Totale: </span>
            € {{number_Format(\Cart::session('_token')->getTotal(), 2, ',', '') }}
        </h3>

        <!-- bottone checkout -->
    <div class="index-search">
        <button class="button real-btn main-btn"> 
            <a class="white" role="button" href="{{ route('cart.checkout') }}">Checkout</a>
        </button> 
    </div>

</div>
@endsection