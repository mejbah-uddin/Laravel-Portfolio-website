<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContactModel;

class ContactController extends Controller
{
    function ContactsIndex(){
        return view('Contact');
    }


    function ContactsMessages(){
        $result = json_encode(ContactModel::orderBy('id', 'desc')->get());
        return $result;
    }

    function contactDelete(Request $request){
      $id = $request->input('id');
      $result = ContactModel::where('id', $id)->delete();
      if ($result == true) {
        return 1;
      } else {
        return 0;
      }

    }
}
