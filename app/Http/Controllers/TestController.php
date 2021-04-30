<?php

namespace App\Http\Controllers;

use App\Models\Test;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        return view('welcome');
        //dd('formation dsi');
    }
    public function ajouterTest()
    {
       $test1= new Test();
       $test1->nom='kere';
       $test1->annee='2022';
       //dd($test1);
       $test1->save();
       
    }
    public function liste()
    {
        $liste=Test::where('id',1)->get();
        dd($liste);
    }
}
