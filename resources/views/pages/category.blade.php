@extends('master')
@section('category')

<?php 
    $publication_category = DB::table('tbl_category')
                ->where('category_status',1)
                ->get();
?>


<h4>Categories</h4>
<ul class="templatemo_list">
    @foreach($publication_category as $v_category)
        <li><a href="index.html">{{ $v_category->category_name }}</a></li>
    @endforeach
    
</ul>
@endsection