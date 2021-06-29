<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\UserVote;
use App\Models\Voting;
use Illuminate\Http\Request;
use Auth;

class VotingController extends Controller
{

    public function availableVoting()
    {
        $votings = Voting::with(['votingCandidates' => function ($query) {
            return $query->withCount('userVotes');
        }])->withCount('votes')
            ->where('finished_at', '>', now())
            ->get();
        foreach ($votings as $voting) {
            if (UserVote::where('voting_id', $voting->id)->firstWhere('user_id', Auth::id())) {
                $voting->is_voted = true;
            } else {
                $voting->is_voted = false;
            }
        }
        return $votings;
    }

    public function votingHistory()
    {
        $votings = Voting::with(['votingCandidates' => function ($query) {
            return $query->withCount('userVotes')->orderBy('user_votes_count', 'DESC');
        }])->withCount('votes')
            ->where('finished_at', '<=', now())
            ->get();
        foreach ($votings as $voting) {
            if (UserVote::where('voting_id', $voting->id)->firstWhere('user_id', Auth::id())) {
                $voting->is_voted = true;
            } else {
                $voting->is_voted = false;
            }
        }
        return $votings;
    }

    public function vote(Request $request)
    {
        return UserVote::create([
            'user_id' => Auth::id(),
            'voting_candidate_id' => $request->voting_candidate_id,
            'voting_id' => $request->voting_id,
        ]);
    }
}
