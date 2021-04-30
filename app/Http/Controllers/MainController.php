<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
    public function Accueil()
    {
        //dd(Auth::user());
        $user=User::orderByDesc('id')->first();
        //dd($user->isadmin());
        // $collect1=collect(['Orange','Banane','Avocat']);
        // $produits=produit::all();
        // $produitsFiltres=$produits->filter(function($produit,$key){
        // return $produit->prix>100000 && $produit->prix<500000;
        // });
        // dd($produitsFiltres);
        
        $produits=Produit::orderbyDesc('id')->take(9)->get();
        return view('welcome',['produits' =>$produits]);
        //dd('Accueil');
    }//
}
