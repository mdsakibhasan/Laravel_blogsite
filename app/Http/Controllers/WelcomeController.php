<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $published_blog = DB::table('tbl_blog')
                ->join('tbl_category','tbl_blog.category_id','=','tbl_category.category_id')
                ->where('tbl_blog.publication_status',1)
                ->select('tbl_blog.*','tbl_category.category_name')
                ->get();
        
        $home_content = view('pages.home')
                ->with('published_blog',$published_blog);
        $category = view('pages.category');
        $recent = view('pages.recent');
        return view('master')
                ->with('content',$home_content)
                ->with('category',$category)
                ->with('friends',$recent);
    }
    public function protfolio(){
        $protfolio_content = view('pages.protfolio');
        $recent = view('pages.recent');
        return view('master')
                ->with('content',$protfolio_content)
                ->with('friends',$recent);
    }
    public function services(){
        
        $services = view('pages.services');
        $category = view('pages.category');
        return view('master')
                ->with('services',$services)
                ->with('category',$category);
    }
    public function contact(){
        $contact = view('pages.contact');
        $recent = view('pages.recent');
        $category = view('pages.category');
        return view('master')
                ->with('contact',$contact)
                ->with('friends',$recent)
                ->with('category',$category);
    }
    public function blog_details($blog_id)
    {
        $blog_info = DB::table('tbl_blog')
                ->where('blog_id',$blog_id)
                ->first();
        $data=array();
        $data['hit_count']=$blog_info->hit_count+1;
        DB::table('tbl_blog')
                ->where('blog_id',$blog_id)
                ->update($data);
        
        $blog_info_by_id = DB::table('tbl_blog')
                ->join('tbl_category','tbl_blog.category_id','=','tbl_category.category_id')
                ->where('tbl_blog.blog_id',$blog_id)
                ->select('tbl_blog.*','tbl_category.category_name')
                ->first();
        $blog_details = view('pages.blog_details')
                ->with('blog_info',$blog_info_by_id);
        $recent = view('pages.recent');
        $category = view('pages.category');
        return view('master')
                ->with('content',$blog_details)
                ->with('category',$category)
                ->with('friends',$recent);
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
