<?php

use Illuminate\Database\Seeder;

class SkillCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i=0; $i < 20; $i++) { 
    		
    		$role = $i%(rand(1,2)) == 0 ? 'client' : 'technician';

			DB::table('skill_categories')->insert([
			    [
			    	'title' => $faker->word,
			    	'description' => $faker->sentence,
			    ]
			]);
    	}
    }
}
