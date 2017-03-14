<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	$faker = \Faker\Factory::create();

    	DB::table('users')->insert([
		    [
		    	'first_name' => 'norman',
		    	'last_name' => 'aranez', 
		    	'email' => 'araneznorman@gmail.com',
		    	'password' => bcrypt('admin'),
				'remember_token' => str_random(10),
				'role' => 'admin',
				'img' => $faker->imageUrl(160, 160),
		        'country' => $faker->country,
		        'company_name' => $faker->company,
		    ]
		]);
    	
    	for ($i=0; $i < 20; $i++) { 
    		
    		$role = $i%(rand(1,2)) == 0 ? 'client' : 'technician';

			DB::table('users')->insert([
			    [
			    	'first_name' => $faker->firstname,
			    	'last_name' => $faker->lastname, 
			    	'email' => $faker->email,
			    	'password' => bcrypt('secret'),
					'remember_token' => str_random(10),
					'role' => $role,
					'img' => $faker->imageUrl($width = 160, $height = 160),
					'country' => $faker->country,
		        	'company_name' => $faker->company,
			    ]
			]);
    	}
    }
}
