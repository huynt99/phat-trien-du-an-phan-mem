
<nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span><strong>administration</strong></span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="admin.php"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <?php if($_SESSION['quyen'] == "3") {
                    echo '<li class="nav-item" role="presentation"><a class="nav-link" href="User.php"><i class="fas fa-users"></i><span>User</span></a></li>'; }?>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="qldiemchuan.php"><i class="fas fa-users"></i><span>Điểm chuẩn</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="Post.php"><i class="fas fa-upload"></i><span>Posts</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="TuyenSinhQuanLyDonChuaDuyet.php"><i class="fab fa-wpforms"></i><span>Tuyển sinh</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>