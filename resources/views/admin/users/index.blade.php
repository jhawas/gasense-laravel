@extends('layouts.admin.app')

@section('content')

<div class="col-md-12">
	<div class="row">
		<div class="box">
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Users</h3>

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
                  <th>Name</th>
                  <th>Email</th>
                  <th>Role</th>
                  <th>Company</th>
                  <th>City</th>
                  <th>Country</th>
                  <th>Options</th>
                </tr>
                </thead>
                <tbody>

                @foreach($users as $user)
	                <tr>
	                  <td>{{ $user->id }}</td>
	                  <td>{{ ucfirst($user->first_name) . ' ' . ucfirst($user->last_name) }}</td>
	                  <td>{{ $user->email }}</td>
	                  <td>{{ $user->role }}</td>
	                  <td>{{ $user->company_name }}</td>
	                  <td>{{ $user->city }}</td>
	                  <td>{{ $user->country }}</td>
	                  <td><a href="#" title="">View</a></td>
	                </tr>
	            @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Role</th>
                  <th>Company</th>
                  <th>City</th>
                  <th>Country</th>
                  <th>Options</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->

            <div class="col-md-12 pagination-container">
              <div class="row">
                  <div class="col-md-5 pages">
                    Showing {{ $users->firstItem() }} to {{ $users->lastItem() }} of {{ $users->total() }} entries
                  </div>
                  <div class="col-md-7 page">
                    {{ $users->links() }}
                  </div>
              </div>
            </div>

          </div>
          <!-- /.box -->
	</div>
</div>

@endsection