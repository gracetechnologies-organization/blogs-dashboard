<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{

    use
        HasFactory,
        SoftDeletes;
    protected $fillable =
    [
        'name',
    ];
    
    /*
    |--------------------------------------------------------------------------
    | Custom Helper Functions
    |--------------------------------------------------------------------------
    */

    public static function getCategories()
    {
        return Category::orderBy('created_at', 'desc')
            ->paginate(10, ['*'], 'categories_page');
    }

    public static function searchCategories(string $search)
    {
        return Category::where('name', 'like', '%' . $search . '%')
            ->orderBy('created_at', 'desc')
            ->get();
    }
}
