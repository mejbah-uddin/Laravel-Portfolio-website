<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PhotoModel;
use Illuminate\Support\Facades\Storage;

class PhotoGalleryController extends Controller
{
    function PhotoIndex(){
        return view('Photos');
    }

    function PhotoDelete(Request $request){
        $OldPhotoURL = $request->input('OldPhotoURL');
        $oldPhotoID = $request->input('id');

        $oldPhotoURLArray = explode("/", $OldPhotoURL);
        $oldPhotoName = end($oldPhotoURLArray);

        $DeleteToStorage = Storage::delete('public/'.$oldPhotoName);
        $DeleteRow = PhotoModel::where('id', '=',$oldPhotoID)->delete();

        return $DeleteRow;
    }

    function photoJSON(){
        return PhotoModel::take(4)->get();
    }

    function photoJSONByID(Request $request){
        $FirstID = $request->id;
        $LastID = $FirstID+4;
        return PhotoModel::where('id','>=',$FirstID)->where('id', '<', $LastID)->get();
    }

    function PhotoUpload(Request $request){

        $photoPath = $request->file('photo')->store('public');

        $photoName = (explode('/', $photoPath))[1];
        $host = $_SERVER['HTTP_HOST'];
        $location = "http://".$host."/storage/".$photoName;
        $result = PhotoModel::insert(['location'=>$location]);
        return $result;
    }
}
