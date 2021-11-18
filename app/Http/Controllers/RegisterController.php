<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'login'
        ]);
    }

    public function store(Request $request)
    {
        // ambil data yang di inputkan user
        // return $request->all();

        // validasi data inputan
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|min:3|max:255|unique:users',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255'
        ]);

        // encrypsi password
        // $validatedData['password'] = bcrypt($validatedData);
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        // pesan flash
        // $request->session()->flash('success', 'Reegistration successfull!, Please login.');

        return redirect('/login')->with('success', 'Reegistration successfull!, Please login.');
    }
}
