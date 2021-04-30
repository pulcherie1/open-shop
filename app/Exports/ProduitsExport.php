<?php

namespace App\Exports;

use App\Models\Produit;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ProduitsExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return Produit::all();
    // }
    public function view():View//export une view
    {
      return view('partials._produits-table',['produits'=>Produit::all(),]);
    }
}
