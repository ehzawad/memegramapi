<?php

use Faker\Generator as Faker;

$factory->define(App\Comment::class, function (Faker $faker) {
    return [
        //
        //
        //
        //
        'photo_id' => function () {
            return factory(App\Photo::class)->create()->id;
        },
        'author_id' => function () {
            return factory(App\People::class)->create()->id;
        },
        'body' => $faker->realText($maxNbChars = 200, $indexSize = 2),
    ];
});
