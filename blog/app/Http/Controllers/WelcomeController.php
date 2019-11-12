<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    // public function index(){
    //     return view('welcome');
    // }
    // public function lienhe(){
    //     return view('lienhe');
    // }
    // public function gioithieu(){
    //     return view('gioithieu');
    // }
    // public function sanpham(){
    //     return view('sanpham');
    // }
    
    // public function show($number){
    //     echo $number;
    // }

    public function quatrang($quatrang = 'welcome'){
        return view($quatrang);
    }

    public function hamktralogin(Request $request){
        return view('/lienhe',['user' =>$request->user]);

    }

}
