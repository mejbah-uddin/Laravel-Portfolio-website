<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ServicesModel;

class ServicesController extends Controller
{
  function ServicesIndex(){

    return view('Services');
  }

  function getServicesData(){
      $result = json_encode(ServicesModel::orderBy('id', 'desc')->get());
      return $result;
  }

  function getServiceDetailsData(Request $request){
      $id = $request->input('id');
      $result = json_encode(ServicesModel::where('id', $id)->get());
      return $result;
  }

  function ServicesDelete(Request $request){
    $id = $request->input('id');
    $result = ServicesModel::where('id', $id)->delete();
    if ($result == true) {
        return 1;
    } else {
        return 0;
    }
  }

  function ServicesUpdate(Request $request){
    $id = $request->input('id');
    $name = $request->input('name');
    $des = $request->input('des');
    $img = $request->input('img');

    $result = ServicesModel::where('id', $id)->update(['service_name'=>$name,'service_des'=>$des,'service_img'=>$img]);
    if ($result == true) {
        return 1;
    } else {
        return 0;
    }
  }

  function ServicesAdd(Request $request){
    $name = $request->input('name');
    $des = $request->input('des');
    $img = $request->input('img');

    $result = ServicesModel::insert(['service_name'=>$name,'service_des'=>$des,'service_img'=>$img]);
    if ($result == true) {
        return 1;
    } else {
        return 0;
    }
  }

}
