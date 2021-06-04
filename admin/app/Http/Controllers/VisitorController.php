<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\visitorModel;

class VisitorController extends Controller
{
    function VisitorIndex(){
      $visitor = json_decode(visitorModel::orderBy('id', 'desc')->take(200)->get());
      return view('Visitor', ['visitor'=>$visitor]);
    }
}
