<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Category;
use App\Services\ImageManipulation;
use Exception;
use DOMDocument;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class UnPublishedController extends Controller
{
    public function editBlog($ID)
    {
        $UpdateType = 'Unpublished Blog Update';
        $Data = Blog::find($ID);
        $Categories = Category::getAll();
        return view('livewire.employee.blogs.edit-ub-published-blog', compact('Data', 'Categories', 'updateType'));
    }

    public function unPublishedUpdateBlog(Request $Req, $id)
    {
        try {
            // dd($Req->all());
            $rules = [
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
            $Updated = Blog::updateUnPublishedBlog($id, $imageName, $Req->Title, $Slug, $Req->MetaTitle, $Req->MetaDescription, $Req->Category, $Status, $Req->Excerpt, $Blog);
            if ($Updated) {
                return redirect()->route('blogs.unpublished')->with('success', config('messages.UPDATION_SUCCESS'));

            } else {
                return redirect()->back()->with('error', config('messages.UPDATION_FAILED'));
            }
        } catch (ValidationException $error) {
            return redirect()->back()->withErrors($error->errors())->withInput();
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }
}
