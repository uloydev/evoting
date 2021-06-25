<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Voting;

class VotingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Voting::factory()->count(10)->create();
    }
}
