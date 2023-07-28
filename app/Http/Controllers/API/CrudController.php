<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Crud;
use Validator;
use App\Http\Resources\CrudResources;
use App\Http\Resources\UserResources;

class CrudController extends Controller
{
    public function tampilcrud(){
        $crud = Crud::get();
        return response()->json([
            'crud'=>$crud
        ]);
    }

    public function  tambahcrud(Request $request){
        $validator = Validator::make($request->all(),[
         
            'users_id' => 'required|integer',
            'tittle' => 'required|string|max:255',
            'body'  => 'required|string',
    
        ]);
        if($validator->fails()){
            return response()->json($validator->errors());       
        }


      $crud = Crud::create([
            'users_id'=>$request->users_id,
            'title' => $request->tittle,
            'body' => $request->body,
        ]);

        return response()
        ->json(['sukses.',
        'crud' => new CrudResources($crud),
        'users' => new  UserResources($crud->users),
        ]);
    }

    public function  editcrud(Request $request, $id){
        $validator = Validator::make($request->all(),[
           
            'users_id' => 'required|integer',
            'tittle' => 'required|string|max:255',
            'body'  => 'required|string',
            
        ]);
        if($validator->fails()){
            return response()->json($validator->errors());       
        }

 
        
      $crud = Crud::find($id);
      $crud->title = $request->tittle;
      $crud->body = $request->body;
      $crud->update();

        return response()
        ->json(['sukses.', 
        'crud' => new CrudResources($crud),
        'users' => new  UserResources($crud->users),
    ]);
    }

    public function destroy(Crud $id)
    {
    $id->delete(); 
     
    return response()
    ->json(['Menghapus Crud  sukses']);
    }
}
