@extends('admin.admin_master')
@section('admin_content')
<div class="box-content">
    <table class="table table-striped table-bordered bootstrap-datatable datatable">
        <thead>
            <tr>
                <th>Blog ID</th>
                <th>Blog Title</th>
                <th>Blog Image</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>   
        <tbody>
            <?php
                foreach( $blog_info as $v_blog )
                {
            ?>
            <tr>
                <td><?php echo $v_blog->blog_id; ?></td>
                <td class="center"><?php echo $v_blog->blog_title; ?></td>
                <td class="center"><img src="<?php echo $v_blog->blog_image; ?>" height="50" width="50" ></td>
                <td class="center">
                    <?php if( $v_blog->publication_status == 1 ) {?>
                        <span class="label label-success">Published</span>
                    <?php }else{?>
                        <span class="label label-important">unpublished</span>
                    <?php }?>
                </td>
                <td class="center">
                    <?php if( $v_blog->publication_status == 1 ) {?>
                        <a class="btn btn-danger" href="{{URL::to('/unpublished-blog/'.$v_blog->blog_id)}}">
                            <i class="halflings-icon white thumbs-down"></i>  
                        </a>
                    <?php }else{?>
                        <a class="btn btn-success" href="{{URL::to('/published-blog/'.$v_blog->blog_id)}}">
                            <i class="halflings-icon white thumbs-up"></i>  
                        </a>
                    <?php }?>
                    <a class="btn btn-info" href="{{URL::to('/edit-blog/'.$v_blog->blog_id)}}">
                        <i class="halflings-icon white edit"></i>  
                    </a>
                    <a class="btn btn-danger" href="{{URL::to('/delete-blog/'.$v_blog->blog_id)}}" onclick="return checkDelete();">
                        <i class="halflings-icon white trash"></i> 
                    </a>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>            
</div>
</div><!--/span-->
@endsection