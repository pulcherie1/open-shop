<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Exports\ProduitsExport;
use Maatwebsite\Excel\Facades\Excel;
use Database\Factories\ProduitFactory;
use App\Http\Requests\ProduitFormRequest;
use App\Http\Requests\ProduitAjoutFormRequest;
use App\Mail\AjoutProduit;
use App\Models\User;
use App\Notifications\NouveauProduit;
use Illuminate\Support\Facades\Mail;

class ProduitController extends Controller
{public function __construct(){
    $this->middleware(['auth','isAdmin'])->except(['index','show']);

{
    
}
}
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $produits=Produit::orderByDesc('id')->paginate(15);
        return view('front-office.produits.index', ['produits'=>$produits]);//
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories= Category::all();
        $produit=new Produit();
        return view('front-office.produits.create', compact('categories','produit'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProduitAjoutFormRequest $request)
    {
        //comment uploader un fichier
        //dd(time("d/m/y H:m:s"));
        $imageName="produit.png";
        if($request->file('image')){
            $imageName=time()."_".$request->file('image')->getClientOriginalName();
            $request->file('image')->storeAs('public/produits',$imageName);
        }
            //dd($request->file('image')->getClientOriginalName());
     
            $produit=Produit::create([
            'designation'=> $request->designation,
            'prix'=> $request->prix,
            'quantite'=> $request->quantite,
            'description'=> $request->description,
            'category_id'=> $request->category_id,
            'image'=>$imageName,
        ]);
        $user=User::first();//specifie l'utilisateur
        //$users=User::all(); l'instruction pour envoyer le mail à tous
        Mail::to($user)->send(new AjoutProduit($produit));//specifier l'instence qu'on veut envoyer(envoi du mail à l'utilisateur)
        return redirect()->route('produits.show', $produit)->with('statut',"Votre nouveau produit a été bien ajouter!");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Produit $produit)
    {
        
        return view('front-office.produits.show',compact('produit'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Produit $produit)
    {
        $categories=Category::all();
       return view('front-office.produits.edit',['produit'=>$produit, 'categories'=>$categories]);//
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProduitFormRequest $request, $id)
    {
        $imageName="produit.png";
        if($request->file('image')){
            $imageName=time()."_".$request->file('image')->getClientOriginalName();
            $request->file('image')->storeAs('public/produits',$imageName);
        }
        Produit::where('id',$id)->update([
            'designation'=> $request->designation,
            'prix'=> $request->prix,
            'quantite'=> $request->quantite,
            'description'=> $request->description,
            'category_id'=> $request->category_id,
            'image'=>$imageName,
        ]);
        $produit=Produit::where('id',$id)->first();
        $user=User::first();
        $user->notify(new NouveauProduit($produit));
        return redirect()->route('produits.show',$id)->with('statut', 'Votre produit a bien été modifier');
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Produit::destroy($id);
        return redirect()->route('produits.index')->with('statut','Votre produit a bien été supprimer!');//
    }
    public function export()
    {
        return Excel::download(new ProduitsExport(),'produits.xlsx');
    }
}
