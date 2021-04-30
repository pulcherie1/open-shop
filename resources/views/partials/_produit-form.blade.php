@csrf

<div class="form-group">
  <label for="">Designation</label>
  <input required type="text" name="designation" id="designation" class="form-control" value={{ old('designation')??$produit->designation }}>
  @error("designation")
     <small  class="text-danger">{{ $message }}</small>
  @enderror
   
</div>
<div class="form-group">
 <label for="">Prix</label>
 <input Required type="number" name="prix" id="prix" class="form-control" value={{ old('prix')?? $produit->prix}}>
 @error("prix")
   <small  class="text-danger">{{ $message }}</small>
 @enderror
 
</div>
<div class="form-group">
 <label for="">Quantité</label>
 <input  Required type="number" name="quantite" id="quantite" class="form-control" value={{ old('quantite')??$produit->quantite }}>
 @error("quantite")
   <small  class="text-danger">{{ $message }}</small>
 @enderror
 
</div>
<div class="form-group">
 <label for="">Catégorie</label>
 <select Required class="form-control" name="category_id" id="categorie">
   @foreach ($categories as $categorie)
       <option {{ $categorie->id==$produit->category_id ? "selected":""}} value="{{ $categorie->id }}">{{ $categorie->libelle }}</option>
   @endforeach
 </select>
 @error("category_id")
   <small  class="text-danger">{{ $message }}</small>
 @enderror
</div>
<div class="form-group">
 <label for="">Description</label>
 <textarea class="form-control" name= "description" id="description" rows="3">{{ old('description')?? $produit->description}}</textarea>
 @error("description")
   <small  class="text-danger">{{ $message }}</small>
 @enderror
</div>
<div class="form-group">
  <label for="">Image</label>
  <input type="file" class="form-control-file" name="image" id="image" placeholder="" aria-describedby="fileHelpId">
  @error("image")
   <small  class="text-danger">{{ $message }}</small>
 @enderror
</div>
<button type="submit" class="btn btn-success btn-block btn-lg mt-4">Valider</button>