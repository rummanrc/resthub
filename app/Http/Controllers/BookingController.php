<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use Auth;

class BookingController extends Controller
{
    public function reserve(Request $request)
    {
    	$booking = new Booking();
        $booking->user_id = Auth::user()->id;
        $booking->restaurant_id = $request->restaurant_id;
        $booking->timing = $request->date." ".$request->time.":00";
        $booking->save();
        return "booking successful";
    }
}
