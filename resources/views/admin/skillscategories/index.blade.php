@extends('layouts.admin.app')

@section('content')

<div class="col-md-12">
	<div class="row">
		<div class="box">
        <div class="box">
            <div class="box-header">
              <button class="btn btn-primary">Add New</button>

              <div class="box-tools">
                <form action="post" method="get" accept-charset="utf-8">
                  <div class="input-group input-group-sm" style="width: 250px;">
                    <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                    <div class="input-group-btn">
                      <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Title</th>
                  <th>Description</th>
                  <th>Options</th>
                </tr>
                </thead>
                <tbody>

                @foreach($categories as $category)
	                <tr>
	                  <td>{{ $category->id }}</td>
	                  <td>{{ $category->title }}</td>
	                  <td>{{ $category->description }}</td>
                    <td><a href="#">View</a></td>
	                </tr>
	            @endforeach

                </tbody>
                <tfoot>
                <tr>
                  <th>ID</th>
                  <th>Title</th>
                  <th>Description</th>
                  <th>Options</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->

            <div class="col-md-12 pagination-container">
              <div class="row">
                  <div class="col-md-5 pages">
                    Showing {{ $categories->firstItem() }} to {{ $categories->lastItem() }} of {{ $categories->total() }} entries
                  </div>
                  <div class="col-md-7 page">
                    {{ $categories->links() }}
                  </div>
              </div>
            </div>

          </div>
          <!-- /.box -->
	</div>
</div>

@endsection