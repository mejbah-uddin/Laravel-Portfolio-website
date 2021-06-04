<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProjectModel;

class ProjectController extends Controller
{
    function ProjectIndex(){
        
    $ProjectsData = json_decode(ProjectModel::orderBy('id', 'desc')->get());
        return view('Projects', ['ProjectsData'=>$ProjectsData]);
    }
}
