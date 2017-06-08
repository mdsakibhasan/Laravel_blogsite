@extends('master')
@section('content')
<div class="post_section">

    <div class="post_date">
        30<span>Nov</span>
    </div>
    
    @foreach($published_blog as $v_blog)
    <div class="post_content">

        <h2><a href="{{ URL::to('/blog-details/'.$v_blog->blog_id) }}">{{ $v_blog->blog_title }}</a></h2>

        <strong>Author:</strong> Steven | <strong>Category: {{ $v_blog->category_name }} </strong>

        <a href="http://www.templatemo.com/page/1" target="_parent"><img src="{{ $v_blog->blog_image }}" alt="image" width="250"  /></a>

        <?php echo $v_blog->blog_short_description ?>
        <p><a href="blog_post.html">24 Comments</a> | <a href="{{ URL::to('/blog-details/'.$v_blog->blog_id) }}">Continue reading...</a>                </p>
    </div>
    @endforeach
    
    <div class="cleaner"></div>
</div>

@endsection