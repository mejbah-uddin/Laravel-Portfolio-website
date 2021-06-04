<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\PrivacyController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\TermsController;
use App\Http\Controllers\ContactController;


Route::get('/', [HomeController::class, 'HomeIndex']);
Route::post('/contactSend', [HomeController::class, 'contactSend']);


Route::get('/Courses', [CourseController::class, 'CourseIndex']);
Route::get('/Privacy', [PrivacyController::class, 'PrivacyIndex']);
Route::get('/Projects', [ProjectController::class, 'ProjectIndex']);
Route::get('/Terms', [TermsController::class, 'TermsIndex']);
Route::get('/Contact', [ContactController::class, 'ContactIndex']);

Route::get('/CourseDetails/{id}/{title}', [CourseController::class, 'CourseDetails']);
