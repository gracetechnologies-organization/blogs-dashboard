<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Auth;

class Blog extends Model
{
    use
    HasFactory,
    SoftDeletes;

    protected $fillable = [
        'image',
        'title',
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

    public static function getUnpublishedBlog()
    {
        $authorID = Blog::getUser();
        return Blog::where(['status' => 0,'author_id' => $authorID])
                    ->paginate(8);
    }

    public static function getPublishedBlog()
    {
        $authorID = Blog::getUser();
        return Blog::where(['status' => 1,'author_id' => $authorID])
                    ->paginate(6);
    }

    public static function getArchivedBlog()
    {
        $authorID = Blog::getUser();
        return Blog::onlyTrashed()
                    ->where('author_id', $authorID)
                    ->paginate(6);

    }

    public static function getBlogs(int $Status, string $Search)
    {
        return Blog::where('title', 'like', '%' . $Search . '%')
                    ->where('status', $Status)
                    ->orderBy('created_at', 'desc')
                    ->paginate(9);
    }

    public static function activeOrBlockBlog(int $BlogID, string $Status)
    {
        return Blog::where('id', $BlogID)
                    ->update(['status' => $Status]);
    }

    public static function insertBlog(string $Image, string $Title, string $MetaTitle, string $MetaDescription, int $Category, int $Status, string $Excerpt, string $Blog)
    {
        $StatusToSave = $Status === 1 ? 1 : 0;
        return Blog::create([
            'image' => $Image,
            'title' => $Title,
            'meta_title' => $MetaTitle,
            'meta_description' => $MetaDescription,
            'cat_id' => $Category,
            'author_id'=> auth()->user()->id,
            'status' => $StatusToSave,
            'excerpt' => $Excerpt,
            'blog' => $Blog
        ]);
    }

}
