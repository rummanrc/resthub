@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row text-center">
        <div class="col-xs-12 col-sm-6 col-md-12 text-center">
            <div class="well well-sm">
                <div class="row">
                    <!--div class="col-sm-6 col-md-4">
                        <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                    </div-->
                    <div class="col-sm-6 col-md-11">
                        <h1>
                            {{$user->name}}</h1>
                            <br>
                          <h2>  
                        <i class="glyphicon glyphicon-globe"></i>Username: {{$user->username}}
                        </h2>
                         <br>
                        <h3>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>{{$user->email}}
                            <br />
                             <br>
                            
                            <br />
                             <br>
                            </p>
                           </h3>
                        
                        
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection