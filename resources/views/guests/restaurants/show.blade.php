@extends('layouts.client')

@section('content')
<body class="white-background">
<div class="container">

<h1 class="text-center "><span class="rest-name"> {{ $restaurant->name }}</span> </h1>
<p class="text-center">
    <span class="font-weight-bold"></span>
    @forelse ($restaurant->restypes as $restype)
       <span class="rest-typology">{{$restype->restypes_status}}</span>{{!$loop->last ? ',' : ''}}
    @empty
        No restaurant tags
    @endforelse
</p>
<!-- immagine ristorante -->
<div class="rest-logo-container">
    
    @if (!empty($restaurant->path_image))
        <img class="rounded" src="{{ asset('storage/' . $restaurant->path_image) }}" alt="{{ $restaurant->name }}">
    @else
        <img class="rounded"  src="{{ asset('img/smoothie.png' ) }}" alt="{{ $restaurant->name }}">
    @endif 
</div>
<!-- info banner ristorante -->
<div class="searchbar rest-info-container" width=50% style="background: white">
   
    <h5 class="col-6"><span class="font-weight-bold">Delivery Price: </span>€ {{number_Format($restaurant->delivery_price, 2, ',', '') }}</h5>
    <h5 class="col-6">
        <span class="font-weight-bold">Address:</span>
        {{ $restaurant->address }}
    </h5>

    @if (!empty($restaurant->min_order))
        <h5 class="col-6"><span class="font-weight-bold">Min Order: </span>€ {{number_Format($restaurant->min_order, 2, ',', '') }}</h5>
    @else
        <h5 class="col-6">Min Order: No Min Order!</h5>
    @endif
    <h5 class="col-6"><span class="font-weight-bold">Open hours:</span>  {{ $restaurant->open_hours }}</h5>
    <h5 class="col-12 mb-5">
        <span class="font-weight-bold">Who we are:</span>
        {{ $restaurant->body }}
    </h5>
</div>


{{-- MENU --}}
<h3 class="my-5 text-center"> <span class="font-weight-bold">MENU</span>: </h3>
{{-- IF THERE ARE DISHES , VISIBLE --}}

<div class="dishes-card-container ">
    @forelse ($dishes as $dish)
        @if ($dish->visibility == 1)
               
                <div class="dish" >
                    @if (!empty($dish->path_image))
                        <img class="" width=200 src="{{ asset('storage/' . $dish->path_image) }}" alt="{{ $dish->name }}">
                    @else 
                        <img class="picturefake " src="{{ asset('img/.png' ) }}" alt="{{ $dish->name }}">
                    @endif 
                    <div class="">
                        <div class="">
                            <h5>{{ $dish->name }}</</h5>
                        </div>
                      
                            <!-- <div class="dish-info">{{ $dish->description }}</div> -->
                            <div class="dish-info">
                                @if ($dish->dishtype_id == 1)
                                    Appetizer
                                @elseif ($dish->dishtype_id == 2)
                                    Main Course
                                @elseif ($dish->dishtype_id == 3)
                                    Second
                                @elseif ($dish->dishtype_id == 4)
                                    Sides
                                @elseif ($dish->dishtype_id == 5)
                                    Dessert
                                @else
                                    Beverage                                
                                @endif
                                {{-- {{ $dish->dishtype_id }} --}}
                            </div>
                            <div class="dish-price">Price: € {{number_Format($dish->price, 2, ',', '') }}</div>
                        
                        <div class="button" ><a href="{{ route('add', $dish->id) }}" id="no-spacing" class="">ADD TO CART</a></div>
                    </div>
                </div>
        @endif
    @empty
        {{-- IF THERE ARE NO DISHES / ALL NOT VISIBLES--}}
        <p class="text-danger">No dishes yet! Come back soon to check!</a></p>
        <a class="btn btn-primary" href="{{ route('restaurants.index') }}">Come back to the Restaurants list</a>
    @endforelse 
</div> 


    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
     <!-- Initialize Swiper -->
     <script>
        var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        });
  </script>


</div> 
</body>

@endsection
    
<!--  -->