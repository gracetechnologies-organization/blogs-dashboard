<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use DOMDocument;
use Exception;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    function createBlog(Request $Req)
    {
        try {
            
            if ($Req->hasFile('Image')) {
                $Image = $Req->file('Image');
                $imageName = time() . '.' . $Image->getClientOriginalExtension();
                $Image->move(public_path('storage/blog_images'), $imageName);
            }
                $Blog = $Req->Blog;
                $dom = new DOMDocument();
                $Blog = preg_replace('/<wbr[^>]*>/', '', $Blog);
                $dom->loadHTML($Blog);
                $Images= $dom->getElementsByTagName('Image');
                foreach ($Images as $key => $img) {
                    $Data = base64_decode(explode(',',explode(';',$img->getAttribute('src'))[1])[1]);
                    $image_name = "/upload/" . time(). $key.'.png';
                    file_put_contents(public_path().$image_name,$Data);
                    $img->removeAttribute('src');
                    $img->setAttribute('src',$image_name);
                }
            $Blog = $dom->saveHTML();
                $Inserted = Blog::insertBlog($imageName, $Req->Title, $Req->MetaTitle, $Req->MetaDescription, $Req->Category, $Req->Status, $Req->Excerpt, $Req->Blog);
                if ($Inserted) {
                    return redirect()->route('blogs.create')->with('success', config('messages.INSERTION_SUCCESS'));
                } else {
                    return redirect()->back()->with('success', config('messages.INSERTION_FAILED'));
                }
            
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function editBlog($id){
        $updateType = 'Published Blog Update';
        $Data = Blog::find($id);
        $Categories = Blog::getCategories();
        return view('livewire.employee.blogs.edit-published-blog',compact('Data','Categories','updateType'));
    }

    public function updateBlog(Request $Req ,$id)
    {
        try {
            $existingBlog = Blog::find($id);
            if ($Req->hasFile('Image')) {
                $Image = $Req->file('Image');
                $imageName = time() . '.' . $Image->getClientOriginalExtension();
                $Image->move(public_path('storage/blog_images'), $imageName);
            }
            else {
                $imageName = $existingBlog->image;
            }
            $Blog = $Req->Blog;
            $dom = new DOMDocument();
            $Blog = preg_replace('/<wbr[^>]*>/', '', $Blog);
            $dom->loadHTML($Blog);

            $Images= $dom->getElementsByTagName('Image');
            foreach ($Images as $key => $img) {
                $Data = base64_decode(explode(',',explode(';',$img->getAttribute('src'))[1])[1]);
                $image_name = "/upload/" . time(). $key.'.png';
                file_put_contents(public_path().$image_name,$Data);
                $img->removeAttribute('src');
                $img->setAttribute('src',$image_name);
            }

            $Blog = $dom->saveHTML();
            $Updated = Blog::where('id', $id)->update([
                'image' =>$imageName  ,
                'title' => $Req->Title,
                'meta_title' => $Req->MetaTitle,
                'meta_description' => $Req->MetaDescription,
                'cat_id' => $Req->Category,
                'author_id'=> auth()->user()->id,
                'status' => $Req->Status === 1 ? 1 : 0,
                'excerpt' => $Req->Excerpt,
                'blog' => $Blog
            ]);
            if ($Updated) {
                return redirect()->back()->with('success', config('messages.UPDATION_SUCCESS'));
            } else {               
                return redirect()->back()->with('error', config('messages.UPDATION_FAILED'));
            }
            
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }


    }
}
