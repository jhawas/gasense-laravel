<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{

	protected $fillable = [
        'title', 'description'
    ];

    public function category()
    {
    	return $this->belongsTo('App\SkillCategory', 'skill_category_id');
    }
}
