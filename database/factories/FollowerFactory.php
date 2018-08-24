<?php

use Faker\Generator as Faker;

$factory->define(App\Follower::class, function (Faker $faker) {
    return [

        'status' => $faker->randomElement(['pending', 'accepted', 'rejected']),

        'author_id' => function () {
            return factory(App\People::class)->create()->id;
        },
        //
    ];
});
