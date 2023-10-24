<?php

namespace App\Services;

use Carbon\Carbon;
use Illuminate\Http\UploadedFile;

class ImageManipulation
{
    public static function getImgURL(UploadedFile $Image)
    {
        $fileName = Carbon::now()->timestamp . "_" . $Image->getClientOriginalName();
        /*
        |--------------------------------------------------------------------------
        | Save the image to the default storage path "storage/app/public/images"
        |--------------------------------------------------------------------------
        */
        $Image->storeAs('public/blog_images', $fileName);
        return $fileName;
    }

}
