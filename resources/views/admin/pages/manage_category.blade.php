@extends('admin.admin_master')
@section('admin_content')
<div class="box-content">
    <table class="table table-striped table-bordered bootstrap-datatable datatable">
        <thead>
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>   
        <tbody>
            <?php
                foreach( $all_category_info as $v_category )
                {
            ?>
            <tr>
                <td><?php echo $v_category->category_id; ?></td>
                <td class="center"><?php echo $v_category->category_name; ?></td>
                <td class="center">
                    <?php if( $v_category->category_status == 1 ) {?>
                        <span class="label label-success">Published</span>
                    <?php }else{?>
                        <span class="label label-important">unpublished</span>
                    <?php }?>
                </td>
                <td class="center">
                    <?php if( $v_category->category_status == 1 ) {?>
                        <a class="btn btn-danger" href="{{URL::to('/unpublished-category/'.$v_category->category_id)}}">
                            <i class="halflings-icon white thumbs-down"></i>  
                        </a>
                    <?php }else{?>
                        <a class="btn btn-success" href="{{URL::to('/published-category/'.$v_category->category_id)}}">
                            <i class="halflings-icon white thumbs-up"></i>  
                        </a>
                    <?php }?>
                    <a class="btn btn-info" href="{{URL::to('/edit-category/'.$v_category->category_id)}}">
                        <i class="halflings-icon white edit"></i>  
                    </a>
                    <a class="btn btn-danger" href="{{URL::to('/delete-category/'.$v_category->category_id)}}" onclick="return checkDelete();">
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