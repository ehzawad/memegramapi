<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Photo::class, 5)
           ->create()
           ->each(function ($u) {
                $u->comments()->save(factory(App\Comment::class)->create());
            }
        );

        // Creates authors with no photos
        factory(App\People::class, 2)->create();

        // Creates Articles without Comments
        factory(App\Photo::class, 3)->create();

        // Creates Likes
        factory(App\Photo::class, 5)
           ->create()
           ->each(function ($u) {
                $u->likes()->save(factory(App\Like::class)->create());
            }
        );

        factory(App\Follower::class, 25)->create();
        factory(App\Following::class, 25)->create();

    }
}
