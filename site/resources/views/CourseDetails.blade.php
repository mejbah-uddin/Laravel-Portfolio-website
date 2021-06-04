@extends('Layout.app')
@section('title', 'Courses')
@section('content')

@include('Component.CoursePageTopBanner');

    <div class="container-fluid">
        <div class="row">
            @foreach($CourseDetails as $CourseDetails)
            <div>
                <div class="col-md-6">
                    <img src="{{$CourseDetails->course_img}}" alt="">
                </div>
                <div class="col-md-4">
                   <h1>Host</h1>
                </div>
            </div>
            @endforeach
        </div>
    </div>

@endsection