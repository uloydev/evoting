<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\UserVote;
use App\Models\Voting;
use App\Models\User;

class UserVoteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = User::all();
        foreach (Voting::with('votingCandidates')->get() as $voting) {
            $index = 0;
            foreach ($voting->votingCandidates as $candidate) {
                for ($i=0; $i < rand(20, 33); $i++) { 
                    UserVote::create([
                        "voting_id" => $voting->id,
                        "voting_candidate_id" => $candidate->id,
                        "user_id" => $users[$index]->id,
                    ]);
                    $index++;
                }
            }
        }
    }
}
