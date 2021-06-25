<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Voting;
use App\Models\UserVote;
use Illuminate\Http\Request;

class VotingController extends Controller
{

    public function availableVoting()
    {
        return Voting::with(['votingCandidates' => function ($query) {
            return $query->withCount('userVotes');
        }])
            ->withCount('votes')
            ->where('finished_at', '>', now())
            ->get();
    }

    public function votingHistory()
    {
        return Voting::with(['votingCandidates' => function ($query) {
            return $query->withCount('userVotes')->orderBy('user_votes_count', 'DESC');
        }])
            ->withCount('votes')
            ->where('finished_at', '<=', now())
            ->get();
    }

    public function vote(Request $request)
    {
        return UserVote::create([
            'user_id' => Auth::id(),
            'voting_candidate_id' => $request->voting_candidate_id,
            'voting_id' =>$request->voting_id,
        ]);
    }
}
