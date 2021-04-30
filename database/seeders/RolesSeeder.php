<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Role;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role1=Role::create([
            'profil'=>'super-admin2',
            
        ]);
       $role2=Role::create([
            'profil'=>'admin2',
            
        ]);
        $role3=Role::create([
            'profil'=>'client2',
            
        ]);
        $user1=User::create([
            'name'=>'SUPER ADMIN',
            'email'=>'super-admin2@admin.com',
            'password'=> Hash::make('admin123'),
            'role_id'=>$role1->id,


        ]);
        $user2=User::create([
            'name'=>'ADMIN',
            'email'=>'admin2@admin.com',
            'password'=> Hash::make('admin123'),
            'role_id'=>$role2->id,

        ]);
        $user3=User::create([
            'name'=>'CLIENT',
            'email'=>'client2@admin.com',
            'password'=> Hash::make('admin123'),
            'role_id'=>$role3->id

        ]);





    }
}
