<?php

namespace Database\Seeders;

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
        \App\Models\User::factory(100)->create();
        \App\Models\User::factory(1)->state(['email' => 'test@test.com'])->create();
        $this->call([
            VotingSeeder::class,
            VotingCandidateSeeder::class,
            UserVoteSeeder::class
        ]);
    }
}
