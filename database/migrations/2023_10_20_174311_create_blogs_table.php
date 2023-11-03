<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->text('image');
            $table->string('title', 180);
            $table->string('meta_title');
            $table->foreignId('cat_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreignId('author_id')->references('id')->on('users')->onDelete('cascade');
            $table->tinyInteger('status')->comment('0:unpublished , 1:published');
            $table->string('excerpt');
            $table->text('meta_description');
            $table->longText('blog');
            $table->timestamps();
            $table->softDeletes();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blogs');
    }
};
