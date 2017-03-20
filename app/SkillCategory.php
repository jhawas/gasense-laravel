<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SkillCategory extends Model
{
	protected $fillable = [
        'title', 'description'
    ];
    public function skill()
    {
    	return $this->hasMany('App\Skill');
    }
}
