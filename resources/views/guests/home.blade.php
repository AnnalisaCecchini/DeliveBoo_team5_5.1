@extends('layouts.client')

@section('content')   
<body id="homepage">
    <section id="home-section-1">
        <!-- TYPING ANIMATION TITLE -->
        <div id="type-anim">
            <h1>DeliveBoo è </h1>
            <h1 class="typing"></h1>
        </div> 
         <!-- LINK/BUTTON TO RESTAURANT LIST INDEX -->
        <div class="btn-container">
            <div class="button  button__CTA" id="learn-more">
                <a href="{{ route('restaurants.index') }}">SCOPRI ORA</a>
            </div>
        </div>      
        <div class="img-container" id="lilgirl">
            <img src="{{ asset('img/gir.png') }}" alt="">
        </div>
    </section>
    <!-- ONLY HOMEPAGE SCRIPT LINK -->
    <script src="{{ asset('js/homepage.js') }}" defer></script>
</body>
   
   
@endsection

