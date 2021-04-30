@component('mail::message')
# Du nouveau sur OpenShop!
## Un nouveau super produit vient d'être ajouté sur votre superbe plateforme OpenShop.
<br>
Vous trouverez ci-desous les informations sur le nouveau produit.

### Désignation:{{ $produit->designation }}
### Prix:{{ $produit->prix }}
### Catégorie:{{ $produit->category->libelle }}
### Description:{{ $produit->description }}
<br>
Pour commender ce produit cliquez juste sur le bouton ci-dessous
@component('mail::button', ['url' => route('produits.show',$produit)])
Commandez ce produit
@endcomponent

Merci d'avoir choisi OpenShop pour votre shopping,<br><br>
{{ config('app.name') }}
@endcomponent
