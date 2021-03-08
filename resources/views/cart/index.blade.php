@extends('layouts.client')

@section('content')
<div class="container" id="cart-index">
     
        <h1 class="second-col">YOUR CART</h1>

          
                @foreach ($cartDishes as $dish)

                <div class="cart-info-complete">
                    <div class="cart-info">
                        <div  scope="row">{{ $dish->name }}</div>
                        
                               <div class="rest-typology">€ {{number_Format($dish->price, 2, ',', '') }}</div> 
                       
                            <div class="rest-typology"> € {{number_Format(\Cart::session('_token')->get($dish->id)->getPriceSum(), 2, ',', '') }}   </div>   
                        
                    </div>
                    <div class="cart-functionalities">
                        
                            <form  action="{{ route('cart.update', $dish->id) }}">
                                <input id="dish-quantity" name="quantity" type="number" value="{{ $dish->quantity }}">
                                <div class="button"><input  type="submit" value="save"></div>
                            </form>
                        
                        <div class="button"> <a  href="{{ route('cart.destroy', $dish->id) }}">Delete</a> </div>
                       
                    </div>
                </div>
              @endforeach
          
  

        <!-- prezzo totale -->
        <h3 class="text-center mt-3">
            <span class="font-weight-bold">Total price: </span>
            € {{number_Format(\Cart::session('_token')->getTotal(), 2, ',', '') }}
        </h3>

        <!-- bottone checkout -->
        <div class="button"> 
            <a role="button" href="{{ route('cart.checkout') }}">Chekout</a>
        </div>


</div>
@endsection