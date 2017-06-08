@extends('admin.admin_master')
@section('admin_content')
<ul class="breadcrumb">
    <li>
        <i class="icon-home"></i>
        <a href="index.html">Home</a>
        <i class="icon-angle-right"></i> 
    </li>
    <li>
        <i class="icon-edit"></i>
        <a href="#">Forms</a>
    </li>
</ul>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
            <div class="box-icon">
                <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <h3 style="color:green">
                <?php
                $message = Session::get('message');
                if ($message) {
                    echo $message;
                    Session::put($message, null);
                }
                ?>
            </h3>

            {!! Form::open(['url' => '/save-blog','method'=>'post','enctype'=>'multipart/form-data']) !!}
            <fieldset>
                <div class="control-group">
                    <label class="control-label" for="typeahead">Blog Title</label>
                    <div class="controls">
                        <input type="text" name="blog_title" class="span6 typeahead" id="typeahead">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="selectError">Category Name</label>
                    <div class="controls">
                        <select id="selectError" data-rel="chosen" name="category_id">
                            <option value=""> Select Category </option>
                            @foreach($category_info as $c_info)
                            <option value="{{$c_info->category_id}}" >{{$c_info->category_name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="control-group hidden-phone">
                    <label class="control-label" for="textarea2">Blog Short Description</label>
                    <div class="controls">
                        <textarea class="cleditor" name="blog_short_description" id="textarea2" rows="3"></textarea>
                    </div>
                </div>

                <div class="control-group hidden-phone">
                    <label class="control-label" for="textarea2">Blog Long Description</label>
                    <div class="controls">
                        <textarea class="cleditor" name="blog_long_description" id="textarea2" rows="3"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="typeahead">Publication Status</label>
                    <div class="controls">
                        <select name="publication_status">
                            <option>Select Status</option>
                            <option value="1">Published</option>
                            <option value="0">Un-published</option>

                        </select>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="fileInput">Blog Image</label>
                    <div class="controls">
                        <input class="input-file uniform_on" id="fileInput" type="file" name="blog_image">
                    </div>
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Save changes</button>
                    <button type="reset" class="btn">Cancel</button>
                </div>
            </fieldset>
            {!! Form::close() !!}  

        </div>
    </div><!--/span-->

</div><!--/row-->
@endsection