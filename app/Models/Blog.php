<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
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
    | Relations
    |--------------------------------------------------------------------------
    */
    public function categories()
    {
        return $this->belongsTo(Category::class, 'cat_id');
    }
    /*
    |--------------------------------------------------------------------------
    | Helpers
    |--------------------------------------------------------------------------
    */
    public static function getUser()
    {
        return auth()->user()->id;
    }

    public static function getArchivedBlog(string $Search)
    {
        $AuthorID = self::getUser();
        return self::onlyTrashed()->with('categories')
            ->where('title', 'like', '%' . $Search . '%')
            ->where('author_id', $AuthorID)
            ->paginate(6);
    }

    public static function getBlogs(int $Status, string $Search)
    {
        $AuthorID = self::getUser();
        return self::with('categories')
            ->where('title', 'like', '%' . $Search . '%')
            ->where('status', $Status)
            ->where('author_id', $AuthorID)
            ->orderBy('created_at', 'desc')
            ->paginate(6);
    }

    public static function activeOrBlockBlog(int $BlogID, string $Status)
    {
        return self::where('id', $BlogID)
            ->update(['status' => $Status]);
    }

    public static function insertBlog(string $Image, string $Title, string $Slug, string $MetaTitle, string $MetaDescription, int $Category, int $Status, string $Excerpt, string $Blog)
    {
        return self::create([
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

    public static function updatePublishedBlog(int $id, string $imageName, string $Title, string $Slug, string $MetaTitle, string $MetaDescription, int $Category, int $Status, string $Excerpt, string $Blog)
    {
        return self::where('id', $id)->update([
            'image' => $imageName,
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
    public static function updateUnPublishedBlog(int $id, string $imageName, string $Title, string $Slug, string $MetaTitle, string $MetaDescription, int $Category, int $Status, string $Excerpt, string $Blog)
    {
        return self::where('id', $id)->update([
            'image' => $imageName,
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
