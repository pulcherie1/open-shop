<?php

namespace App\Http\Controllers;

use App\Models\Vehicule;
use Illuminate\Http\Request;

class VehiculeController extends Controller
{
    public function index()
    {
        //return view('welcome');
        dd('vehicule');
    }
    
    public function ajouterVehicule()
    {
        $vehicule1= new Vehicule();
        $vehicule1->nom='yaris';
        $vehicule1->marque='toyota';
        $vehicule1->description='vehicule le plus vendu';
        $vehicule1->quantite=25;
        //dd('test1');
        $vehicule1->save();


        


    }//
    public function ajouterVehicule2()
    {
        $vehicule2= new Vehicule();
        $vehicule2->nom='rav 4';
        $vehicule2->marque='mazda';
        $vehicule2->description ='le vehicule tout terrain';
        $vehicule2->quantite=2;

        //dd('test1');
        $vehicule2->save(); 
    }
    public function listeVehicule()
    {
       $liste=Vehicule::all();
    }
    public function updateVehicule(Vehicule $vehicule)
    {
        $vehicule2=Vehicule::where('id', 2);
        $vehicule2->nom='4 runner';
        $vehicule2->quantite=2;
        $vehicule2->marque='toyota';
        $vehicule2->quantite=4;
        $vehicule2->save(); 
        
    }
}
