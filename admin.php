<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
include("head.php");
$matk=$_SESSION['matk'];
require('connect.php');
$row=mysqli_fetch_assoc(mysqli_query($conn, "select * from taikhoan where matk='$matk'"));
if($_SESSION['quyen']=="3"){$sqlpost = "Select * from baiviet";}
else {$sqlpost = "Select * from baiviet where matk = '$matk'";}
$resultpost = mysqli_query($conn, $sqlpost);
$sqltk="select * from taikhoan";
mysqli_set_charset($conn, 'UTF8');
$resulttk = mysqli_query($conn, $sqltk);
?>

<body id="page-top">
    <div id="wrapper">
    <?php include("menu.php");?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                            </div>
                        </form>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">
                                    <span class="d-none d-lg-inline mr-2 text-gray-600 small"><?php echo $row['tentk']?></span>
                                    <img class="border rounded-circle img-profile" src="images/avatar5.jpeg"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="hoso.php"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="logout.php"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container">
                    <div class="container-fluid">
                        <h6 style="color: rgb(0,0,0);">Tài khoản:</h6>
                        <table id="example" class="table table-striped table-bordered" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Permission</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                if($_SESSION['quyen']!='1'){
                                if (mysqli_num_rows($resulttk) > 0) {
                                while ($row = mysqli_fetch_assoc($resulttk)) {
                                    if ($row['maquyen']==3) $maquyen1='Admin';
                                    else 
                                    {if ($row['maquyen']==2) $maquyen1='Manager';
                                    else $maquyen1='Viewer';
                                    }
                                    echo '<tr><td>'.$row['matk'].'</td>';
                                    echo '<td>'.$row['tentk'].'</td>';
                                    echo '<td>'.$row['email'].'</td>';
                                    echo '<td>'.$maquyen1.'</td></tr>';
                                }
                                }}
                            ?>
                            </tbody>
                        </table>
                        <h6 style="color: rgb(0,0,0);">Bài viết:</h6>
                        <table id="example" class="table table-striped table-bordered" width="100%">
                            <thead>
                                <tr>
                                    <th width="80px">Mã bài viết</th>
                                    <th width="200px">Tiêu đề</th>
                                    <th width="150px">Ảnh</th>
                                    <th width="400px">Tóm tắt</th>
                                    <th width="193px">Ngày tạo</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                if (mysqli_num_rows($resultpost) > 0) {
                                while ($rowpost = mysqli_fetch_assoc($resultpost)) {
                                    echo '<td>'.$rowpost['mabv'].'</td>';
                                    echo '<td>'.$rowpost['tieude'].'</td>';
                                    echo '<td><img src="'.$rowpost['anh'].'" width="150px" height="150px"></td>';
                                    echo '<td>'.$rowpost['tomtat'].'</td>';
                                    echo '<td>'.$rowpost['ngaytao'].'</td></tr>';
                                }
                                }
                            ?>
                            </tbody>
                        </table>
                        <h6 style="color: rgb(0,0,0);">Đơn tuyển sinh:</h6>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2019</span></div>
                </div>
            </footer>
        </div>
        <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
</body>
<?php
include("foot.php");
?>