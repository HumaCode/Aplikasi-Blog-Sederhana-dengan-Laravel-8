<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('/dashboard.categories.index', [
            'categories' => Category::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.categories.create');
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
            'name' => 'required|max:255',
            'slug' => 'required|unique:categories'
        ]);

        // insert datanya dengan cara berikut
        Category::create($validatedData);

        // jika berhasil arahkan ke halaman categories dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/categories')->with('success', 'New category has been added ');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('dashboard.categories.edit', [
            'category' => $category
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        // tentukan inputan yang akan di validasi
        $rules = [
            'name' => 'required|max:255'
        ];

        // jika slugnya tidak sama dengan yang tersimpan di dalam database, maka kasih validasi /harus diisi dan harus unik
        if ($request->slug != $category->slug) {
            $rules['slug'] = 'required|unique:categories';
        }

        // proses validasi
        $validatedData = $request->validate($rules);

        // insert datanya dengan cara berikut
        Category::where('id', $category->id)
            ->update($validatedData);

        // jika berhasil arahkan ke halaman posts dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/categories')->with('success', 'Category has been updated ');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        // hapus datanya dengan cara berikut
        Category::destroy($category->id);

        // jika berhasil arahkan ke halaman posts dan kirimkan juga pesan suksesnya
        return redirect('/dashboard/categories')->with('success', 'Category has been deleted ');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Category::class, 'slug', $request->name);

        return response()->json(['slug' => $slug]);
    }
}
