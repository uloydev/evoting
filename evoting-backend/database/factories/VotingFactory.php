<?php

namespace Database\Factories;

use App\Models\Voting;
use Illuminate\Database\Eloquent\Factories\Factory;

class VotingFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Voting::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "finished_at" => now()->addDays($this->faker->randomElement([0,1,2,3,4,5])),
            "logo" => "https://via.placeholder.com/300",
            "name" => "Pemilihan ".$this->faker->sentence($nbWords = 2)
        ];
    }
}
