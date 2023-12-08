<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Category;
use App\Services\ImageManipulation;
use DOMDocument;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class BlogController extends Controller
{
    public function createBlog(Request $Req)
    {
        try {
            $rules = [
                'Image' => 'required|image|mimes:webp|max:100',
                'Title' => 'required',
                'Slug' => 'required',
                'MetaTitle' => 'required',
                'MetaDescription' => 'required',
                'Category' => 'required',
                'Excerpt' => 'required',
                'Blog' => 'required',
            ]; 
            $Req->validate($rules);         

            if ($Req->hasFile('Image')) $imageName = ImageManipulation::saveBlogImages($Req->file('Image'));

            $Blog = $Req->Blog;
            $dom = new DOMDocument();
            $Blog = preg_replace('/<wbr[^>]*>/', '', $Blog);
            $dom->loadHTML($Blog);
            $Images = $dom->getElementsByTagName('Image');
            foreach ($Images as $key => $img) {
                $Data = base64_decode(explode(',', explode(';', $img->getAttribute('src'))[1])[1]);
                $image_name = "/upload/" . time() . $key . '.png';
                file_put_contents(public_path() . $image_name, $Data);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $Blog = $dom->saveHTML();
            $Slug = str_replace(' ', '-', $Req->Slug);
            $Status = ($Req->Status === null) ? 0 : 1;
            $Inserted = Blog::insertBlog($imageName, $Req->Title, $Slug, $Req->MetaTitle, $Req->MetaDescription, $Req->Category, $Status, $Req->Excerpt, $Req->Blog);
            if ($Inserted) {
                return redirect()->back()->with('success', config('messages.INSERTION_SUCCESS'));
            } else {
                return redirect()->back()->with('success', config('messages.INSERTION_FAILED'));
            }
        } catch (ValidationException $error) {
            // Handle validation errors
            return redirect()->back()->withErrors($error->errors())->withInput();
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function editBlog($id)
    {
        $Data = Blog::find($id);
        $Categories = Category::getAll();
        $UpdateType = ($Data->status === 1) ? 'Update Published Blog' : 'Update Unpublished Blog'; 
        return view('livewire.employee.blogs.edit-published-blog', compact('Data', 'Categories', 'UpdateType'));
    }

    public function updateBlog(Request $Req, $id)
    {
        try {
            $rules = [
                'Image' => 'required|image|mimes:webp|max:100',
                'Title' => 'required',
                'Slug' => 'required',
                'MetaTitle' => 'required',
                'MetaDescription' => 'required',
                'Category' => 'required',
                'Excerpt' => 'required',
                'Blog' => 'required',
            ];
            // Validate
            $Req->validate($rules);
            $existingBlog = Blog::find($id);
            if ($Req->hasFile('Image')) {
                $imageName =ImageManipulation::saveBlogImages($Req->file('Image'));
            } else {
                $imageName = $existingBlog->image;
            }
            $Blog = $Req->Blog;
            $dom = new DOMDocument();
            $Blog = preg_replace('/<wbr[^>]*>/', '', $Blog);
            $dom->loadHTML($Blog);

            $Images = $dom->getElementsByTagName('Image');
            foreach ($Images as $key => $img) {
                $Data = base64_decode(explode(',', explode(';', $img->getAttribute('src'))[1])[1]);
                $image_name = "/upload/" . time() . $key . '.png';
                file_put_contents(public_path() . $image_name, $Data);
                $img->removeAttribute('src');
                $img->setAttribute('src', $image_name);
            }
            $Blog = $dom->saveHTML();
            $Slug = str_replace(' ', '-', $Req->Slug);
            $Status = ($Req->Status === null) ? 0 : 1;
            $Updated = Blog::updatePublishedBlog($id, $imageName, $Req->Title, $Slug, $Req->MetaTitle, $Req->MetaDescription, $Req->Category, $Status, $Req->Excerpt, $Blog);
            if ($Updated) {
                return redirect()->route('blogs.published')->with('success', config('messages.UPDATION_SUCCESS'));
            } else {
                return redirect()->back()->with('error', config('messages.UPDATION_FAILED'));
            }
        } catch (ValidationException $error) {
            // Handle validation errors
            return redirect()->back()->withErrors($error->errors())->withInput();
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }
}
