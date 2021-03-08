@extends('layouts.client')

@section('content')
<div class="container">
    <div class="index-search">
        <div class="cart-checkout">
            <h2 class="second-col">Checkout</h2>

            <h4>Dati di Spedizione</h3>

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
                    <label for="name">Nome</label>
                    <input class="text-todo" type="text" id="name" name="name" class="form-control">
                </div>

                <div class="form-group">
                    <label for="lastname">Cognome</label>
                    <input class="text-todo" type="text" id="lastname" name="lastname" class="form-control">
                </div>

                <div class="form-group">
                    <label for="address">Indirizzo</label>
                    <input class="text-todo" type="text" id="address" name="address" class="form-control">
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input class="text-todo" type="text" id="email" name="email" class="form-control">
                </div>

                <div class="form-group">
                    <label for="price">Prezzo Totale</label>
                    <h3 class="font-weight-bold" name="price"> € {{number_Format($total, 2, ',', '') }}</h3>
                </div>

            <div class="index-search">
             <button class="button real-btn main-btn"><a  id="no-spacing">Ordina Adesso</a></button>
            </div>
        
            </form>
        </div>
    </div>
</div>
@endsection