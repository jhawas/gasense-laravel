<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Skill;

class SkillController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }

    public function index()
    {
    	$skills = Skill::paginate(10);

    	$skills = Skill::with('category')->paginate(10);

    	return view('admin.skills.index', ['skills' => $skills]);
    }
}
