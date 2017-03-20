# gasense

# Gas marketer website

#Requirements for Installation
	
- git (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- nodejs (https://nodejs.org/en/)
- composer (https://getcomposer.org/)

#Installation

- Clone the file by running this on command line `git clone git@github.com:jhawas/gasense-laravel.git`
- Go to cloned directory by doing `cd gasense-laravel`
- Run `composer install` inside the main directory via command line
- Run `npm install` inside the main directory via command line
- Run `bower install` inside the main directory via command line
- Run `npm run dev` to compile the assets`


#Database Setup

- Create database
- Go to `.env` file and setup credentials for database
- Run `php artisan migrate` to craete all the tables
- Run `php artisan db:seed` to add partials data on created tables


#Credentials

##Admin
- email: admin@gasense.com
- password: admin
##Users
- email: select from generated emails in database
- password: secret`