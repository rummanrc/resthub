<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel</title>
    <link href="{{asset('/css/adminpanel/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('/css/adminpanel/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('/css/adminpanel/css/datepicker3.css')}}" rel="stylesheet">
    <link href="{{asset('/css/adminpanel/css/styles.css')}}" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><span>RESTHUB</span> Admin</a>
            </div>
        </div>
    </nav>

    <main class="py-4">
            @yield('content')
        </main>
    </div>

</body>
</html>