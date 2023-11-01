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
        // dd($Req->all());
        if ($Req->hasFile('Image')) {
            $Image = $Req->file('Image');
            $imageName = time() . '.' . $Image->getClientOriginalExtension();
            $Image->move(public_path('storage/blog_images'), $imageName);
        }

        $Blog = $Req->Blog;
        $dom = new DOMDocument();
        // $dom->loadHTML($Blog,9);
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
        Blog::create([
            'image' => $imageName,
            'title' => $Req->Title,
            'meta_title' => $Req->MetaTitle,
            'meta_description' => $Req->MetaDescription,
            'cat_id' => $Req->Category,
            'author_id'=> auth()->user()->id,
            'status' => $Req->Status,
            'excerpt' => $Req->Excerpt,
            'blog' => $Blog
        ]);

        return redirect()->route('blogs.create')->with('success', config('messages.INSERTION_SUCCESS'));
    }
    // published Blog
    public function editBlog($id){
        $Data = Blog::find($id);
        $Categories = Blog::getCategories();
        return view('livewire.employee.blogs.edit-published-blog',compact('Data','Categories'));
    }

    public function updateBlog(Request $Req ,$id)
    {
        try {
            if ($Req->hasFile('Image')) {
                $Image = $Req->file('Image');
                $imageName = time() . '.' . $Image->getClientOriginalExtension();
                $Image->move(public_path('storage/blog_images'), $imageName);
            }
            $Blog = $Req->Blog;
            $dom = new DOMDocument();
            // $dom->loadHTML($Blog,9);
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
                'image' =>$imageName,
                'title' => $Req->Title,
                'meta_title' => $Req->MetaTitle,
                'meta_description' => $Req->MetaDescription,
                'cat_id' => $Req->Category,
                'author_id'=> auth()->user()->id,
                'status' =>$Req->Status,
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