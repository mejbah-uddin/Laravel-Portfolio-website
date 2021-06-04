<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CoursesModel;

use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;


class CourseController extends Controller
{
   function CourseIndex(){
    $CoursesData = json_decode(CoursesModel::orderBy('id', 'desc')->get());
       return view('Courses', ['CoursesData'=>$CoursesData]);
   }

   function CourseDetails(Request $request){
      
      $id = $request->id;
      $title = $request->title;
      $CourseDetails = CoursesModel::where('id','=', $id)->get();

       // Script For SEO
       $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
       $HomeLink = "http://$_SERVER[HTTP_HOST]";
       
       SEOMeta::setTitle($CourseDetails[0]['course_name']);
       SEOMeta::setDescription($CourseDetails[0]['course_des']);
       SEOMeta::setCanonical($actual_link);
       
       OpenGraph::addImage($HomeLink."/".$CourseDetails[0]['course_img']);
       OpenGraph::setTitle($CourseDetails[0]['course_name']);
       OpenGraph::setDescription($CourseDetails[0]['course_des']);
       OpenGraph::setUrl($actual_link);
       OpenGraph::setSiteName($CourseDetails[0]['course_name']);
 
       //End SEO Script
      return view('CourseDetails', ['CourseDetails'=>$CourseDetails]);
   }
}
