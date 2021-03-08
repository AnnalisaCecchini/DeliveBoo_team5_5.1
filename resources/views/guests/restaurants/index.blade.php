@extends('layouts.client')

@section('content')

<div id="filter" class="container" style="padding-left: 0px;padding-right: 0px;">
  

    {{-- SEARCH --}}
    <div class="index-search">
        <div class="research-container">
                <label class="second-col" for="name">Cerca un ristorante: </label>
                <input class="text-todo" type="text" name="name" v-model="name" {{-- v-on:keyup="filter" --}}>
                {{-- <button @click="filter" 
                >Trova un ristorante!
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
                    <div class="index-search">
                        <button class="button real-btn main-btn" @click="filter" > <a > Trova !</a>
                    </div>
                </button>
                    
            
            
        </div> 
    </div>

    {{-- SHOW RESULTS --}}
    <div>
        <h4>Ecco i ristoranti cercati: </h4>
        <div v-if="filteredRestaurants.length > 0">
            
            <ul class="list-group">
              
            </ul> 
        </div>
        <h5 v-else class="text-danger" >Ci dispiace, nessun ristorante è stato trovato.</h5>
    </div>
        <ul id="restaurants-filtered">
            <li  v-for="filteredRestaurant in filteredRestaurants">
               <div  class="container-card">
                     <div class="card" >
                         <div class="img-bx">
                            <img class="rounded" width=200 src="{{ asset('img/deliveroo-logo.png')}}" alt="">
                            <h4>@{{ filteredRestaurant.name }}</h4>
                         </div>
                         <div class="content-bx">
                             
                             <a :href="`http://127.0.0.1:8000/restaurants/${filteredRestaurant.slug}`">Mostra Menu</a>
                         </div>
                     </div>
              </div>
            </li>
        </ul>
            
        

</div> 

         <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>    


 
    
    
@endsection 