<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/','WelcomeController@index');

// Route::get('/lienhe','WelcomeController@lienhe');
// Route::get('/sanpham','WelcomeController@sanpham');
// Route::get('/gioithieu','WelcomeController@gioithieu');

// Route::get('/test/{number}','WelcomeController@show');
 
Route::resource('/','ProductController');
Route::get('detail/{id}','ProductController@detail');

Route::get('product/{type_id}','ProductController@protype');



// Route::get('/lienhe', 'WelcomeController@hamktralogin')->middleware('kiemtralogin');//de vi tri dau tien

// Route::get('/{quatrang?}','WelcomeController@quatrang');

// Route::get('/admin/{tuoi}', function(){
//     echo 'Day la trang web tren 18 tuoi';
// })->middleware('kiemtratuoi');


// Route::get('/product','ProductController@index');
// Route::get('/{name}/{pass}', 'WelcomeController@hamktralogin')->middleware('kiemtralogin');

