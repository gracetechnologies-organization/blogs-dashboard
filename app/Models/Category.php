<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name'
    ];
    /*
    |--------------------------------------------------------------------------
    | Helpers
    |--------------------------------------------------------------------------
    */
    public static function updateCategory(int $ID, string $Category)
    {
       return self::where('id', '=', $ID)->update(['name'=>$Category]);
    }

    public static function deleteCategory(int $ID)
    {
        return self::find($ID)->forceDelete();
    }

    public static function getCategories()
    {
        return self::orderBy('created_at', 'desc')
            ->paginate(10, ['*'], 'categories_page');
    }

    public static function searchCategories(string $search)
    {
        return self::where('name', 'like', '%' . $search . '%')
            ->orderBy('created_at', 'desc')
            ->get();
    }

    public static function getAll()
    {
        return self::all();
    }
}
