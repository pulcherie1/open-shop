<?php
if(!function_exists('nb_produit')){
    function nb_produit($nb){
        if($nb>1){
            return $nb."produits";
        }
        else{
            return $nb."produit";
        }
    }
}
if(!function_exists('prix_format')){
    function prix_format($prix){
        if($prix){
            return number_format($prix, 0, ',', ' ')." F CFA";
        }
    }
}