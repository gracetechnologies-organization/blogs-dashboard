<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Blog>
 */
class BlogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'image' => $this->faker->imageUrl(),
            'title' => $this->faker->sentence,
            'meta_title' => $this->faker->sentence,
            'cat_id' => Category::inRandomOrder()->first()->id,
            'status' => 1,
            'author_id' => 1,
            'excerpt' => $this->faker->paragraph,
            'meta_description' => $this->faker->sentence,
            'blog' => $this->faker->paragraphs(3, true),
        ];
    }
}
