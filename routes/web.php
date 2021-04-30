<?php

use App\Http\Controllers\FormationController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\VehiculeController;
use App\Mail\AjoutProduit;
use App\Models\Produit;
use Facade\Ignition\Commands\TestCommand;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('index',[FormationController::class, 'index']);
Route::get('update-produit',[FormationController::class, 'updateProduit']);
Route::get('update-produit-2/{produit}',[FormationController::class, 'updateProduit2']);

Route::get('/', [MainController::class, 'Accueil'])->name('accueil');

Route::resource('produits', ProduitController::class);
Route::get('ajouter-produit',[FormationController::class, 'ajouterProduit']);
Route::get('ajouter-produit-2',[FormationController::class, 'ajouterProduit2']);
Route::get('suppression-produit', [FormationController::class, 'suppressionProduit']);
Route::get('test', [TestController::class,'index']);
Route::get('ajouter-test', [TestController::class,'ajouterTest']);
Route::get('liste', [TestController::class,'liste']);
Route::get('export',[ProduitController::class, 'export'])->name('export');
Route::get('test-mail',function(){
    return new AjoutProduit(Produit::orderByDesc('id')->first());
});
//vehicule
// Route::get('vehicule',[VehiculeController::class, 'index']);
// Route::get('ajouter-vehicule',[VehiculeController::class, 'ajouterVehicule']);
// Route::get('ajouter-vehicule-2',[VehiculeController::class, 'ajouterVehicule2']);
// Route::get('ajouter-vehicule',[VehiculeController::class, 'ajouterVehicule']);
// Route::get('liste-vehicule',[VehiculeController::class, 'listeVehicule']);


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';//fichier de route qui se trouve dans la route web
