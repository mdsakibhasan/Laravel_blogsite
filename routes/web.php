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

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/','WelcomeController@index');
Route::get('/protfolio','WelcomeController@protfolio');
Route::get('/services','WelcomeController@services');
Route::get('/contact','WelcomeController@contact');
Route::get('/blog-details/{id}','WelcomeController@blog_details');


/*
start admin 
 */
Route::get('/admin-panel','AdminController@index');
Route::post('/admin-login-check','AdminController@admin_login_check');
/*
start admin 
 */
Route::get('/dashboard','SuperAdminController@index');
Route::get('/logout','SuperAdminController@logout');

Route::get('/add-category','SuperAdminController@add_category');
Route::post('/save-category','SuperAdminController@save_category');
Route::get('/manage-category','SuperAdminController@manage_category');
Route::get('/unpublished-category/{id}','SuperAdminController@unpublished_category');
Route::get('/published-category/{id}','SuperAdminController@published_category');
Route::get('/delete-category/{id}','SuperAdminController@delete_category');
Route::get('/edit-category/{id}','SuperAdminController@edit_category');
Route::post('/update-category/','SuperAdminController@update_category');

Route::get('/add-blog','SuperAdminController@add_blog');
Route::post('/save-blog','SuperAdminController@save_blog');
Route::get('/manage-blog','SuperAdminController@manage_blog');
Route::get('/unpublished-blog/{id}','SuperAdminController@unpublished_blog');
Route::get('/published-blog/{id}','SuperAdminController@published_blog');
Route::get('/delete-blog/{id}','SuperAdminController@delete_blog');
Route::get('/edit-blog/{id}','SuperAdminController@edit_blog');
Route::post('/update-blog/','SuperAdminController@update_blog');
/*
End admin 
 */
Auth::routes();

Route::get('/home', 'HomeController@index');
