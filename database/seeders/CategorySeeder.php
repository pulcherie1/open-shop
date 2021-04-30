<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'libelle'=>'Matériels Electroniques',
            'description'=>'Ceci est la description de matériels Electroniques',

        ]);

        Category::create([
            'libelle'=>'Cosmetiques',
            'description'=>'Ceci est la description de Cosmetiques',

        ]);
        Category::create([
            'libelle'=>'Vêtements',
            'description'=>'Ceci est la description de Vêtements',

        ]);
    }
}
