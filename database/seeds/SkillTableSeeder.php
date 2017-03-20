<?php

use Illuminate\Database\Seeder;

class SkillTableSeeder extends Seeder
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

			DB::table('skills')->insert([
			    [
			    	'title' => $faker->word,
			    	'description' => $faker->sentence,
			    	'skill_category_id' => rand(1,20)
			    ]
			]);
    	}
    }
}
