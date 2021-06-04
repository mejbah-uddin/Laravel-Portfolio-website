<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\VisitorController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\ProjectsController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PhotoGalleryController;

Route::get('/', [HomeController::class, 'HomeIndex'])->middleware('loginCheck');

Route::get('/visitor', [VisitorController::class, 'VisitorIndex'])->middleware('loginCheck');

//Admin Panel Service Management
Route::get('/services', [ServicesController::class, 'ServicesIndex'])->middleware('loginCheck');
Route::get('/getServicesData', [ServicesController::class, 'getServicesData'])->middleware('loginCheck');
Route::post('/servicesDelete', [ServicesController::class, 'ServicesDelete'])->middleware('loginCheck');
Route::post('/serviceDetails', [ServicesController::class, 'getServiceDetailsData'])->middleware('loginCheck');
Route::post('/serviceUpdate', [ServicesController::class, 'ServicesUpdate'])->middleware('loginCheck');
Route::post('/serviceAddNew', [ServicesController::class, 'ServicesAdd'])->middleware('loginCheck');

//Admin Panel Courses Management
Route::get('/courses', [CoursesController::class, 'CoursesIndex'])->middleware('loginCheck');
Route::get('/getCoursesData', [CoursesController::class, 'getCoursesData'])->middleware('loginCheck');
Route::post('/coursesDelete', [CoursesController::class, 'CourseDelete'])->middleware('loginCheck');
Route::post('/courseDetails', [CoursesController::class, 'getCourseDetailsData'])->middleware('loginCheck');
Route::post('/courseUpdate', [CoursesController::class, 'CoursesUpdate'])->middleware('loginCheck');
Route::post('/courseAddNew', [CoursesController::class, 'CoursesAdd'])->middleware('loginCheck');

//Admin Panel Project Management
Route::get('/projects', [ProjectsController::class, 'ProjectsIndex'])->middleware('loginCheck');
Route::get('/getProjectsData', [ProjectsController::class, 'getProjectsData'])->middleware('loginCheck');
Route::post('/projectAdd', [ProjectsController::class, 'projectAdd'])->middleware('loginCheck');
Route::post('/projectDetails', [ProjectsController::class, 'projectUpdateDetails'])->middleware('loginCheck');
Route::post('/projectUpdate', [ProjectsController::class, 'ProjectsUpdate'])->middleware('loginCheck');
Route::post('/projectsDelete', [ProjectsController::class, 'ProjectDelete'])->middleware('loginCheck');

//Admin Panel Contact Management
Route::get('/contacts', [ContactController::class, 'ContactsIndex'])->middleware('loginCheck');
Route::get('/contactMessage', [ContactController::class, 'ContactsMessages'])->middleware('loginCheck');
Route::post('/contactDelete', [ContactController::class, 'contactDelete'])->middleware('loginCheck');

//Admin Panel Review Management
Route::get('/reviews', [ReviewController::class, 'ReviewsIndex'])->middleware('loginCheck');
Route::get('/getreviewsData', [ReviewController::class, 'getreviewsData'])->middleware('loginCheck');
Route::post('/reviewAdd', [ReviewController::class, 'reviewAdd'])->middleware('loginCheck');
Route::post('/reviewDetails', [ReviewController::class, 'reviewDetails'])->middleware('loginCheck');
Route::post('/reviewUpdate', [ReviewController::class, 'reviewUpdate'])->middleware('loginCheck');
Route::post('/reviewsDelete', [ReviewController::class, 'reviewsDelete'])->middleware('loginCheck');

//Admin Login Management
Route::get('/login', [LoginController::class, 'LoginIndex']);
Route::get('/onLogout', [LoginController::class, 'onLogout']);
Route::post('/onLogin', [LoginController::class, 'onLogin']);

//Admin Photo Gallery
Route::get('/photos', [PhotoGalleryController::class, 'PhotoIndex'])->middleware('loginCheck');
Route::get('/photoJSON', [PhotoGalleryController::class, 'photoJSON'])->middleware('loginCheck');
Route::get('/photoJSONByID/{id}', [PhotoGalleryController::class, 'photoJSONByID'])->middleware('loginCheck');
Route::post('/PhotoUpload', [PhotoGalleryController::class, 'PhotoUpload'])->middleware('loginCheck');
Route::post('/PhotoDelete', [PhotoGalleryController::class, 'PhotoDelete'])->middleware('loginCheck');
