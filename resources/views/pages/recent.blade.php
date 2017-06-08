@extends('master')
@section('friends')
<?php 
    $recent_blog = DB::table('tbl_blog')
            ->orderBy('blog_id','desc')
            ->where('publication_status',1)
            ->take(3)
            ->get();
?>


<h4>Recent Blog</h4>
    @foreach($recent_blog as $v_blog)
    <ul class="templatemo_list">
        <li><a href="{{ URL::to('/blog-details/'.$v_blog->blog_id) }}">{{$v_blog->blog_title}}</a></li>
    </ul>
    @endforeach
@endsection