<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\VotingCandidate;
use App\Models\Voting;

class VotingCandidateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(Voting::all() as $voting) {
            VotingCandidate::factory()->count(3)->state(["voting_id" => $voting->id])->create();
        }
    }
}
