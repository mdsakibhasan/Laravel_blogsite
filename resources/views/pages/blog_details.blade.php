@extends('master')
@section('content')
<div class="post_section">

    <div class="post_date">
        30<span>Nov</span>
    </div>
    
  
    <div class="post_content">

        <h2><a href="blog_post.html">{{ $blog_info->blog_title }}</a></h2>

        <strong>Total Hit</strong> {{ $blog_info->hit_count }} | <strong>Category: {{ $blog_info->category_name }} </strong>

        <a href="http://www.templatemo.com/page/1" target="_parent"><img src="{{URL::to($blog_info->blog_image) }}" alt="image" width="250"  /></a>

        <?php echo $blog_info->blog_long_description ?>
        
    </div>
   
    
    <div class="cleaner"></div>
</div>

@endsection