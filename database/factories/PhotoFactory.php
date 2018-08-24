<?php

use Faker\Generator as Faker;

$factory->define(App\Photo::class, function (Faker $faker) {
    return [
        //
        'author_id' => function () {
            return factory(App\People::class)->create()->id;
        },
        'caption' => $faker->text(100),
        'image_path' => $faker->image('public/images',400,300, null, false),

    ];
});
