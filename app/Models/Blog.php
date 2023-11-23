<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'image',
        'title',
        'slug',
        'meta_title',
        'meta_description',
        'cat_id',
        'author_id',
        'status',
        'excerpt',
        'blog',
    ];

    /*
    |--------------------------------------------------------------------------
    | Custom Helper Functions
    |--------------------------------------------------------------------------
    */
    public static function getCategories()
    {
        return Category::all();
    }

    public static function getUser()
    {
        return auth()->user()->id;
    }

    public static function getArchivedBlog(string $Search)
    {
        $AuthorID = Blog::getUser();
        return Blog::onlyTrashed()
            ->where('title', 'like', '%' . $Search . '%')
            ->where('author_id', $AuthorID)
            ->paginate(6);
    }

    public static function getBlogs(int $Status, string $Search)
    {
        $AuthorID = Blog::getUser();
        return Blog::where('title', 'like', '%' . $Search . '%')
            ->where('status', $Status)
            ->where('author_id', $AuthorID)
            ->orderBy('created_at', 'desc')
            ->paginate(6);
    }

    public static function activeOrBlockBlog(int $BlogID, string $Status)
    {
        return Blog::where('id', $BlogID)
            ->update(['status' => $Status]);
    }

    public static function insertBlog(string $Image, string $Title, string $Slug, string $MetaTitle, string $MetaDescription, int $Category, int $Status, string $Excerpt, string $Blog)
    {
        return Blog::create([
            'image' => $Image,
            'title' => $Title,
            'slug' => $Slug,
            'meta_title' => $MetaTitle,
            'meta_description' => $MetaDescription,
            'cat_id' => $Category,
            'author_id' => auth()->user()->id,
            'status' => $Status,
            'excerpt' => $Excerpt,
            'blog' => $Blog
        ]);
    }
}