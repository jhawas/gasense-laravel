<!DOCTYPE html>

<html lang="{{ config('app.locale') }}">

@include('layouts.admin.partials.head')


<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div id="app">
  <div class="wrapper">

    @include('layouts.admin.partials.header')

    <!-- =============================================== -->

    @include('layouts.admin.partials.mainsidebar')

    <!-- =============================================== -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Blank page
          <small>it all starts here</small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#">Examples</a></li>
          <li class="active">Blank page</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">

      @yield('content')

      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    @include('layouts.admin.partials.footer')

    <!-- control sidebar right side -->
    @include('layouts.admin.partials.controlsidebar')
    
  </div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="{{ asset('js/admin-app.js') }}"></script>

</body>
</html>
