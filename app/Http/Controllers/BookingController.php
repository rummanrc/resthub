<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use App\Restaurant;
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

    public function destroy($id)
    {
        $booking = Booking::where('id', $id)->first();
        
        $id=$booking->restaurant_id;
        $booking->delete();
        $list = Booking::where('restaurant_id', $id)->get();
        
        return view('admin.bookinglist', compact('list'));
    }
}
