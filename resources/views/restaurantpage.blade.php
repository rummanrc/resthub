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
                            {{$res->name}}</h1>
                            <br>
                          <h2>  
                        <i class="glyphicon glyphicon-globe"></i>Type: {{$res->type}}
                        </h2>
                         <br>
                        <h3>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>{{$res->address}}
                            <br />
                             <br>
                            <i class="glyphicon glyphicon-globe"></i><a href="/">Homepage</a>
                            <br />
                             <br>
                           </h3>
                        <form method="POST" action="/reserve" id="timeform">
                            {{ csrf_field() }}
                        <div>
                            
                            <h3>Booking Time:</h3>
                            <select id="time" name="time" class="form-control input-lg" required="required" form="timeform">
                                <option value="12:00">12pm</option>
                                <option value="01:00">1pm</option>
                                <option value="02:00">2pm</option>
                                <option value="03:00">3pm</option>
                            </select>
                            <!--div class="col-md-12">
                                    <div class="form-group">
                                        <input type="time" class="form-control input-lg" name="time" id="time" placeholder="Time" required="required" />
                                    </div>
                                </div-->
                            <h3>Booking Date:</h3>
                            <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="date" class="form-control input-lg" name="date" id="date" placeholder="Date" required="required" />
                                    </div>
                                </div>
                <input type="hidden" name="restaurant_id" value="{{ $res->id }}">

<input type="submit" class="btn btn-success btn-large" name="submit" value="Submit">
                        </div>
                        </form>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection