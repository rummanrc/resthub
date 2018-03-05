@extends('layouts.app')

@section('content')
  
<div class="row">

	@forelse($results as $result)
		<div class="container col-md-12 mt-3 bg-dark">

			<div class="card col-md-6 offset-md-3">
				<div class="card-header"> {{ $result->name }} </div>
				<div class="card-body">
				<span>{{ $result->address }}</span>
				</div>
				<div class="card-footer">
				 <a href="/restaurantpage/{{ $result->id }}" class="card-link">More Info about this restaurant</a>
				</div>
			</div>
		</div>
	@empty
		<div class="">
  <div class="">
    <h1></h1>
  </div>
</div>
	@endforelse	
</div>


@endsection