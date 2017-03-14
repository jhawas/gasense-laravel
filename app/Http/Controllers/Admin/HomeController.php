<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class HomeController extends Controller
{
   	public function __construct()
   	{
   		$this->middleware('auth');
   	}

   	public function index()
   	{
   		// return User::selectRaw('role, count(*) as total')
                    // ->groupBy('role')->get();

        $users_total_by_role = User::countByRole()->get();


        $users_total = User::all()->count();




   		return view('admin.home', ['users_total' => $users_total, 'users_total_by_role' => $users_total_by_role]);
   	}
}
