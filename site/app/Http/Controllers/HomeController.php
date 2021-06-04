<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\visitorModel;
use App\Models\ServicesModel;
use App\Models\CoursesModel;
use App\Models\ProjectModel;
use App\Models\ContactModel;
use App\Models\ReviewModel;
use App\Models\HomeSeoModel;

use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class HomeController extends Controller
{
   function HomeIndex(){

      // Script For SEO
      $HomeSeo = HomeSeoModel::all();
      $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
      $HomeLink = "http://$_SERVER[HTTP_HOST]";

      $HomeTitle = $HomeSeo[0]['title'];
      $HomeShareTitle = $HomeSeo[0]['share_title'];
      $HomeDescription = $HomeSeo[0]['description'];
      $HomeKeywords = $HomeSeo[0]['keywords'];
      $HomeImage = $HomeLink."/".$HomeSeo[0]['page_img'];
      
      SEOMeta::setTitle($HomeTitle);
      SEOMeta::setDescription($HomeDescription);
      SEOMeta::setKeywords($HomeKeywords);
      SEOMeta::setCanonical($actual_link);
      
      OpenGraph::addImage($HomeImage);
      OpenGraph::setTitle($HomeShareTitle);
      OpenGraph::setDescription($HomeDescription);
      OpenGraph::setUrl($actual_link);
      OpenGraph::setSiteName($HomeShareTitle);

      //End SEO Script

    $userIP = $_SERVER['REMOTE_ADDR'];
    date_default_timezone_set("Asia/Dhaka");
    $timeData = date('Y-m-d H:i:s');

    visitorModel::insert(['ip_address'=>$userIP, 'visit_time'=>$timeData]);

    $ServicesData = json_decode(ServicesModel::all());
    $CoursesData = json_decode(CoursesModel::orderBy('id', 'desc')->limit(6)->get());
    $ProjectsData = json_decode(ProjectModel::orderBy('id', 'desc')->limit(10)->get());
    $ReviewData = json_decode(ReviewModel::orderBy('id', 'desc')->limit(10)->get());
    return view('Home', [
       'ServicesData'=>$ServicesData, 
       'CoursesData'=>$CoursesData,
       'ProjectsData'=>$ProjectsData,
       'ReviewData'=>$ReviewData
       ]);

   
   }

   function contactSend(Request $request){
      $contact_name = $request->input('contact_name');
      $contact_mobile = $request->input('contact_mobile');
      $contact_email = $request->input('contact_email');
      $contact_msg = $request->input('contact_msg');

      $result = ContactModel::insert([
         'contact_name'=>$contact_name,
         'contact_mobile'=>$contact_mobile,
         'contact_email'=>$contact_email,
         'contact_msg'=>$contact_msg,
      ]);
      if ($result == true) {
         return 1;
      } else {
         return 0;
      }
      
   }
}
