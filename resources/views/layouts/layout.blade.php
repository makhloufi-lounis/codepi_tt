<!DOCTYPE html>
<html>
    @section('head')
        <head>
            <title> @yield('title')</title>
            <link href="{{url('/css/bootstrap.css')}}" rel="stylesheet" type="text/css">
            <link href="{{url('/css/style.css')}}" rel="stylesheet" type="text/css">
            <script type="text/javascript" src="{{url('/js/jquery.min.js')}}"></script>
        </head>
    @show
    <body>
        @section('sidebar')
            <div class="container">
                <div class="page-header">
                    <h2 id="logo">CODEPI</h2>
                </div>
            </div>
        @show

        <div class="container">
            @yield('content')
        </div>

    </body>
</html>
