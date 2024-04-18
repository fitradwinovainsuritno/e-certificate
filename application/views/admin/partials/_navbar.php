
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo me-5" href="index.html"><img style="height: auto; width:50px;" src="<?= base_url('assets/images/logo2.png') ?>" class="me-3" alt=""/>CERTIFICATE</a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img style="height: auto; width:70px;" src="<?= base_url('assets/images/logo2.png') ?>" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">        
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
         
               
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown me-1">
           
            
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
              <img src="<?= base_url('assets/images/faces/ff.jpg') ?>" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">  
                <i class="ti-settings text-primary"></i>
                Settings
              </a>
              <a class="dropdown-item" href="<?= base_url('admin/Auth/logout') ?>">
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>