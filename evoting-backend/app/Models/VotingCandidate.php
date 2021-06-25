<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VotingCandidate extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'image',
        'visi',
        'misi',
        'voting_id',
    ];

    public function userVotes()
    {
        return $this->hasMany("App\Models\UserVote");
    }
}
