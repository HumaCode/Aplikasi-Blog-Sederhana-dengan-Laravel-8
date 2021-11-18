<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // menampilkan postingan berdasarkan user yang login.
        // dari model post dicari semua data yang namanya id_user tampilkan berdasarkan id user yang login
        // return Post::where('user_id', auth()->user()->id)->get();
        return view('dashboard.posts.index', [
            'posts' => Post::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create', [
            'categories' => Category::all()         // memanggil data category
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // validasi form
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' => 'image|file|max:1024',
            'body' => 'required'
        ]);

        // jika user mengupload gambar, maka akan di simpan gambarnya ke dalam file post-image
        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('post-image');
        }

        // tambahkan validasi untuk id user dan untuk field exerpt
        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['exerpt'] = Str::limit(strip_tags($request->body), '200');

        // insert datanya dengan cara berikut
        Post::create($validatedData);

        // jika berhasil arahkan ke halaman posts dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/posts')->with('success', 'New post has been added ');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('dashboard.posts.show', [
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('dashboard.posts.edit', [
            'post' => $post,
            'categories' => Category::all()         // memanggil data category
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        // tentukan inputan yang akan di validasi
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'image' => 'image|file|max:1024',
            'body' => 'required'
        ];

        // jika slugnya tidak sama dengan yang tersimpan di dalam database, maka kasih validasi /harus diisi dan harus unik
        if ($request->slug != $post->slug) {
            $rules['slug'] = 'required|unique:posts';
        }

        // proses validasi
        $validatedData = $request->validate($rules);


        // jika user mengupload gambar, maka akan di simpan gambarnya ke dalam file post-image
        if ($request->file('image')) {
            // jika ada gambar lama, maka hapus dulu gambar lama dan di gantikan dengan gambar bari
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }

            // dan jika ada gambar baru, simpan gambar barunya
            $validatedData['image'] = $request->file('image')->store('post-image');
        }


        // tambahkan validasi untuk id user dan untuk field exerpt
        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['exerpt'] = Str::limit(strip_tags($request->body), '200');

        // insert datanya dengan cara berikut
        Post::where('id', $post->id)
            ->update($validatedData);

        // jika berhasil arahkan ke halaman posts dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/posts')->with('success', 'Post has been updated ');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        // ketika data dihapus, hapus juga file gambarnya
        if ($post->image) {
            Storage::delete($post->image);
        }

        // hapus datanya dengan cara berikut
        Post::destroy($post->id);

        // jika berhasil arahkan ke halaman posts dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/posts')->with('success', 'Post has been deleted ');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);

        return response()->json(['slug' => $slug]);
    }
}
