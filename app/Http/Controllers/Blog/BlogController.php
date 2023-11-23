<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Services\ImageManipulation;
use DOMDocument;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class BlogController extends Controller
{
    public function createBlog(Request $Req)
    {
        try {
            // dd($Req->all())
            $rules = [
                'Title' => 'required',
                'Slug' => 'required',
                'Image' => 'required|max:2024',
                'MetaTitle' => 'required',
                'MetaDescription' => 'required',
                'Category' => 'required',
                'Excerpt' => 'required',
                'Blog' => 'required',
            ]; 
            // Validate
            $Req->validate($rules);         
            if ($Req->hasFile('Image')) {
                $imageName =ImageManipulation::saveBlogImages($Req->file('Image'));
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
        $updateType = 'Published Blog Update';
        $Data = Blog::find($id);
        $Categories = Blog::getCategories();
        return view('livewire.employee.blogs.edit-published-blog', compact('Data', 'Categories', 'updateType'));
    }

    public function updateBlog(Request $Req, $id)
    {
        try {
            $rules = [
                'Image' => 'image|mimes:png,jpeg,jpg,bmp,gif,svg,webp|max:2024',
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
            $Status = ($Req->Status === null) ? 0 : 1;
            $Updated = Blog::where('id', $id)->update([
                'image' => $imageName,
                'title' => $Req->Title,
                'slug' => $Req->Slug,
                'meta_title' => $Req->MetaTitle,
                'meta_description' => $Req->MetaDescription,
                'cat_id' => $Req->Category,
                'author_id' => auth()->user()->id,
                'status' => $Status,
                'excerpt' => $Req->Excerpt,
                'blog' => $Blog
            ]);
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
