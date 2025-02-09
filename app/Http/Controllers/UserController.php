<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function show(string $id)
    {
        return "Hello from user controller!";
    }
}
