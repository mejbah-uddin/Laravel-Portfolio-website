<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProjectModel;

class ProjectsController extends Controller
{
    function ProjectsIndex(){
      return view('Projects');
    }
    function getProjectsData(){
      $result = json_encode(ProjectModel::orderBy('id', 'desc')->get());
      return $result;
    }

    function projectAdd(Request $request){
      $name = $request->input('name');
      $desc = $request->input('desc');
      $link = $request->input('link');
      $image = $request->input('image');

      $result = ProjectModel::insert([
        'project_name'=>$name,
        'project_desc'=>$desc,
        'project_link'=>$link,
        'project_img'=>$image,
      ]);
      if ($result == true) {
          return 1;
      } else {
          return 0;
      }
    }

    function projectUpdateDetails(Request $request){
      $id = $request->input('id');
      $result = json_encode(ProjectModel::where('id', $id)->get());
      return $result;
    }

    function ProjectsUpdate(Request $request){
      $id = $request->input('updateId');
      $name = $request->input('name');
      $desc = $request->input('desc');
      $link = $request->input('link');
      $image = $request->input('image');

      $result = ProjectModel::where('id', $id)->update([
        'project_name'=>$name,
        'project_desc'=>$desc,
        'project_link'=>$link,
        'project_img'=>$image
      ]);
      if ($result == true) {
          return 1;
      } else {
          return 0;
      }
    }

    function ProjectDelete(Request $request){
      $id = $request->input('deleteId');
      $result = ProjectModel::where('id', $id)->delete();
      if ($result == true) {
        return 1;
      } else {
        return 0;
      }

    }

}
