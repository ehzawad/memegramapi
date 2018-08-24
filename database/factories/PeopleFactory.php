<?php

use Faker\Generator as Faker;

$factory->define(App\People::class, function (Faker $faker) {
    return [
        //
       'username' => $faker->userName,
       'email' => $faker->unique()->safeEmail,
	   'salted_password' => $faker->password,
       'first_name' => $faker->firstName,
       'last_name' => $faker->lastName,
    ];
});
