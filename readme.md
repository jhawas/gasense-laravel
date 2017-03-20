# gasense

# gas marketer website

#Requirements for Installation
	
	* git
	* nodejs
	* composer

#Installation
	
	* Clone the file by running this on command line git clone git@github.com:jhawas/gasense-laravel.git
	* Go to cloned directory by doing cd <directory>
	* run composer install inside the main directory via command line
	* run npm install inside the main directory via command line
	* run bower install inside the main directory via command line
	* run npm run dev to compile the assets


#Database Setup
	
	* Create database
	* Go to .env file and setup credentials for database
	* run php artisan migrate to craete all the tables;
	* run php artisan db:seed to add partials the on created tables;


#Credentials
	
	* Admin
		- email: admin@gasense.com
		- password: admin
	* Users
		- email: select from generated emails in database
		- password: secret