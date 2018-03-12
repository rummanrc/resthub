<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use App\Restaurant;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.home');
    }

    public function list($res_id)
    {
        $list = Booking::where('restaurant_id', $res_id)->get();
        return view('admin.bookinglist', compact('list'));
    }

    public function resdetails($res_id)
    {
        $res = Restaurant::where('id', $res_id)->first();
        return view('admin.resdetails', compact('res'));
    }


}