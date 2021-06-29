<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;
use Storage;

class Voting extends Model
{
    use HasFactory;

    protected $fillable= [
        'finished_at',
        'winner_candidate_id',
        'logo',
        'name',
    ];

    protected $casts = [
        'finished_at' => 'datetime',
    ];

    public function getFinishedAtAttribute($value) 
    {
        return Carbon::parse($value)->diffForHumans();
    }

    public function setIsVotedAttribute($isVoted)
    {
        $this->attributes['is_voted'] = $isVoted;
    }

    public function votingCandidates()
    {
        return $this->hasMany('App\Models\VotingCandidate');
    }

    public function winnerCandidate()
    {
        return $this->belongsTo('App\Models\VotingCandidate', 'winner_candidate_id');
    }

    public function votes()
    {
        return $this->hasMany('App\Models\UserVote');
    }
}
