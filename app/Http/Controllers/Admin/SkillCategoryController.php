<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SkillCategory;

class SkillCategoryController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }

    public function index()
    {

    	$categories = SkillCategory::paginate(10);

    	return view('admin.skillscategories.index', ['categories' => $categories]);
    }
}
