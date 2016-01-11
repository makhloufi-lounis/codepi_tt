<!DOCTYPE html>
<html>
    @section('head')
        <head>
            <title> @yield('title')</title>
            <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
            <link href="../css/style.css" rel="stylesheet" type="text/css">
            <script type="text/javascript" src="../js/jquery.min.js"></script>
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
