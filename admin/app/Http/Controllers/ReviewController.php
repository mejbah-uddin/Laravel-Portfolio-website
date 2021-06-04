<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ReviewModel;

class ReviewController extends Controller
{
      function ReviewsIndex(){
        return view('Review');
      }

      function getreviewsData(){
        $result = json_decode(ReviewModel::orderBy('id', 'desc')->get());
        return $result;
      }
      //
      function reviewAdd(Request $request){
        $name = $request->input('name');
        $desc = $request->input('desc');
        $image = $request->input('image');

        $result = ReviewModel::insert([
          'name'=>$name,
          'desc'=>$desc,
          'img'=>$image,
        ]);
        if ($result == true) {
            return 1;
        } else {
            return 0;
        }
      }

      function reviewDetails(Request $request){
        $id = $request->input('id');
        $result = json_encode(ReviewModel::where('id', $id)->get());
        return $result;
      }

      function reviewUpdate(Request $request){
        $id = $request->input('updateId');
        $name = $request->input('name');
        $desc = $request->input('desc');
        $image = $request->input('image');

        $result = ReviewModel::where('id', $id)->update([
          'name'=>$name,
          'desc'=>$desc,
          'img'=>$image
        ]);
        if ($result == true) {
            return 1;
        } else {
            return 0;
        }
      }

      function reviewsDelete(Request $request){
        $id = $request->input('deleteId');
        $result = ReviewModel::where('id', $id)->delete();
        if ($result == true) {
          return 1;
        } else {
          return 0;
        }

      }
}
