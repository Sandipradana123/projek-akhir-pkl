<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminUkk extends Controller
{
    public function index(){
        // Mengambil semua data user dari database
        $users = User::all();

        // Mengirim data ke view
        return view('admin.index', ['users' => $users]);
    }
}
