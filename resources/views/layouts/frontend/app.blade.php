<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">

    @include('layouts.frontend.partials.head')

<body>
    <div id="app">
        
        @include('layouts.frontend.partials.navigation')

        <div class="body-content">
            @yield('content')
        </div>

        @include('layouts.frontend.partials.footer')

    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
