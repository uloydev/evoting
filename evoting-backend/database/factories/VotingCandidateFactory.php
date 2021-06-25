<?php

namespace Database\Factories;

use App\Models\VotingCandidate;
use Illuminate\Database\Eloquent\Factories\Factory;

class VotingCandidateFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = VotingCandidate::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "name" => $this->faker->name(),
            "image" => "https://via.placeholder.com/300",
            "visi" => $this->faker->paragraph($nbSentence = 5),
            "misi" => $this->faker->paragraph($nbSentence = 5),
            "voting_id" => 1,
        ];
    }
}
