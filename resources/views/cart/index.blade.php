@extends('layouts.app')

@section('content')
<div class="container">
   <h1 class="text-center mt-5 mb-5 text-primary font-weight-bold ">YOUR CART</h1>

   
       <table class="searchbar m-auto">
           <thead>
            <tr>
               <th>Name</th>
               <th class="pr-5">Price Single</th>
               <th class="pr-5">Price Total</th>
               <th>Quantity</th>
               <th class="text-center">Action</th>
            </tr>
           </thead>
           <tbody> 
                @foreach ($cartDishes as $dish)

                <tr>
                    <td width="200" scope="row">{{ $dish->name }}</td>
                    <td class="pr-5 text-center">
                        € {{number_Format($dish->price, 2, ',', '') }}
                    </td>
                    <td class="pr-5 text-center">
                            € {{number_Format(\Cart::session('_token')->get($dish->id)->getPriceSum(), 2, ',', '') }}
                        
                    <td>
                        <form class="pr-4" action="{{ route('cart.update', $dish->id) }}">
                            <input name="quantity" type="number" value="{{ $dish->quantity }}">
                            <input class="btn btn-secondary" type="submit" value="save">
                        </form>
                    </td>
                    <td>
                        <a class="btn btn-danger" href="{{ route('cart.destroy', $dish->id) }}">Delete</a>
                    </td>
                </tr> 
              @endforeach
           </tbody>
       </table>
   
        <h3 class="text-center mt-3">
            <span class="font-weight-bold">Total price: </span>
            € {{number_Format(\Cart::session('_token')->getTotal(), 2, ',', '') }}
        </h3>

        <div class="d-flex justify-content-center mt-4"> 
            <a role="button" class="btn btn-primary" href="{{ route('cart.checkout') }}">Chekout</a>
        </div>


</div>
@endsection