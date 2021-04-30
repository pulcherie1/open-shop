<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProduitAjoutFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'designation'=>'required|min:5|max:50|unique:produits',//designation,'.$id permet de mettre une exception pour pouvoir modifier le produit
            'prix'=>'required|numeric|between:1000,1000000',
            'quantite'=>'required|numeric|between:5,5000',
            'description'=>'nullable|max:255',
            'category_id'=>'required|numeric',
            'image'=>'nullable|mimes:png,jpg,jpeg,gif,bmp,svg',
              //noms des champs du formulaire
        ];
    }
}
