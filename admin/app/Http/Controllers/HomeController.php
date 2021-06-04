<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContactModel;
use App\Models\CoursesModel;
use App\Models\ProjectModel;
use App\Models\ReviewModel;
use App\Models\ServicesModel;
use App\Models\visitorModel;

class HomeController extends Controller
{
    function HomeIndex(){
      $totalContact  = ContactModel::count();
      $totalCourse  = CoursesModel::count();
      $totalProjects = ProjectModel::count();
      $totalReviews  = ReviewModel::count();
      $totalServices  = ServicesModel::count();
      $totalVisitors  = visitorModel::count();
      return view('Home', [
        'totalContact'=>$totalContact,
        'totalCourse'=>$totalCourse,
        'totalProjects'=>$totalProjects,
        'totalReviews'=>$totalReviews,
        'totalServices'=>$totalServices,
        'totalVisitors'=>$totalVisitors
      ]);
    }
}
