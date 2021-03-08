@extends('layouts.client')

@section('content')

<div id="filter" class="container" style="padding-left: 0px;padding-right: 0px;">
  

    {{-- SEARCH --}}
    <div class="research-container">
            <label class="second-col" for="name">SEARCH YOUR RESTAURANT: </label>
            <input class="rest-input" type="text" name="name" v-model="name" {{-- v-on:keyup="filter" --}}>
            {{-- <button @click="filter" 
            >Find Restaurant!
            </button> --}}
            <ul class="restype-checkbox">
                @foreach ($restypes as $restype)
                <div class="switch-container">
                    <span>{{ $restype->restypes_status }}</span>
                    <li class="toggle">
                        <input type="checkbox" id="{{ $restype->id }}" value="{{ $restype->id }}" v-model="restypes"
                        {{-- v-on:change="filter" --}}>
                        <label class="label" for="{{ $restype->id }}"></label>
                    </li>
                </div>   
                   
                @endforeach
            </ul>
            
                <button class="button real-btn" @click="filter" > <a > Find !</a>
            </button>
                
           
        
    </div> 


    {{-- SHOW RESULTS --}}
    <div>
        <h4>List of choice, upon your research: </h4>
        <div v-if="filteredRestaurants.length > 0">
            
            <ul class="list-group">
              
            </ul> 
        </div>
        <h5 v-else class="text-danger" >Sorry, No restaurant to show! Please, try again</h5>
    </div>
        <ul id="restaurants-filtered">
            <li  v-for="filteredRestaurant in filteredRestaurants">
               <div  class="container-card">
                     <div class="card" >
                         <div class="img-bx">
                            <img class="rounded" width=200 src="{{ asset('img/deliveroo-logo.png')}}" alt="">
                         </div>
                         <div class="content-bx">
                             <h2>@{{ filteredRestaurant.name }}</h2>
                             <a :href="`http://127.0.0.1:8000/restaurants/${filteredRestaurant.slug}`">Show Menu</a>
                         </div>
                     </div>
              </div>
            </li>
        </ul>
            
        

</div> 

         <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>    


 
    
    
@endsection 