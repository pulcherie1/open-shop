<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Produit;
use App\Models\Category;
use Illuminate\Http\Request;

class FormationController extends Controller
{
    public function index()
    {
        //abort(503);
      // $produits= Produit::all();
       $produit1 = Produit::first();
       $user1= User::first();
       $user1->produits()->attach($produit1);// mise en relation
       dd($produit1->users);
       dd($user1->produits);

       $category1=Category::first();
       $produit1->category_id = $category1->id;
       $produit1->save();
       dd($category1->produits);

       dd($produit1->category);
       $produit2=Produit::where("prix","<", 600)->get();
       $produit2=Produit::where(["prix"=>600,"quantite"=>1000])->get();
    }

    public function ajouterProduit()
    {
       
       $produit = new Produit();
       $produit->designation = 'Laafi';
       $produit->prix = 600;
       $produit->description = "la meilleur eau";
       $produit->quantite = 17;
       $produit->save();   

        //dd($produit);
    }
    public function ajouterProduit2()
    {
        $produit = Produit::create([
            'designation'=> "beaufort",
            'prix'=> 600,
            'description'=> "beaufort la boisson la plus consommée",
            'quantite'=> 1000,
         


        ]); 
        dd($produit);

    }
    public function updateProduit()
    {
       $produit1 = Produit::first();
       $produit1->designation='ordinateur';
       $produit1->prix= 500000;
       $produit1->description="la description de l'ordinateur";
       $produit1->quantite=5;
       $produit1->save();
       dd($produit1);
    }
    public function updateProduit2(Produit $produit)
    {
        //Produit::findOrFail($produit);
       // dd($produit2->designation);
       $result = Produit::where('id', $produit->id)->update([
            "designation"=> "Téléphone",
            "prix"=> 50000,
            "description"=> "ceci est la description de téléphone",
            "quantite"=> 26,
         
        ]);
        dd($result);
    }
    public function suppressionProduit()
    {
        $result = Produit::destroy(1);
        dd($result);
    }
    

}
