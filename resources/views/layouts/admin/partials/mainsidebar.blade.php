<!-- Left side column. contains the sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="{{ asset('img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>{{ ucfirst(Auth::user()->first_name) . ' ' . ucfirst(Auth::user()->last_name) }}</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
          <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                  <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                  </button>
                </span>
          </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="header">MAIN NAVIGATION</li>
          <li>
            <a href="{{ route('admin.home') }}">
              <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            </a>
          </li>

          <li class="treeview">
            <a href="#">
              <i class="fa fa-user"></i>
              <span>Users</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li>
                  <a href="#">
                    <i class="fa fa-circle-o"></i>
                    <span>List</span>
                    <span class="pull-right-container">
                      <span class="label pull-right bg-yellow">4</span>
                    </span>
                  </a>
              </li>
            </ul>
          </li>
          <li class="header">UTILITIES</li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-pie-chart"></i>
              <span>Technicians</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li>
                  <a href="#">
                    <i class="fa fa-circle-o"></i>
                    <span>Categories</span>
                    <span class="pull-right-container">
                      <span class="label pull-right bg-yellow">4</span>
                    </span>
                  </a>
              </li>
              <li>
                  <a href="#">
                    <i class="fa fa-circle-o"></i>
                    <span>Skills</span>
                    <span class="pull-right-container">
                      <span class="label pull-right bg-yellow">4</span>
                    </span>
                  </a>
              </li>

              <li>
                  <a href="#">
                    <i class="fa fa-circle-o"></i>
                    <span>Level</span>
                    <span class="pull-right-container">
                      <span class="label pull-right bg-yellow">4</span>
                    </span>
                  </a>
              </li>
            </ul>
          </li>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>