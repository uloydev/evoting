<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserVote extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'voting_id',
        'voting_candidate_id',
        'user_id',
    ];

    public function user() {
        return $this->belongsTo('App\Models\User');
    }
}
