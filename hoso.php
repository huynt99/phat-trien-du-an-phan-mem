<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
include("head.php");$matk=$_SESSION['matk'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));

if ($row['maquyen']==3) $maquyen1='Super Admin';
else 
{if ($row['maquyen']==2) $maquyen1='Admin';
else $maquyen1='Viewer';}
?>

<?php
$sql  = "select * from taikhoan where maquyen != 3";
mysqli_set_charset($conn, 'UTF8');
$result = mysqli_query($conn, $sql);
?>

<body id="page-top">
    <div id="wrapper">
    <?php include("menu.php");?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <nav class="navbar navbar-light navbar-expand-md">
                            <div class="container-fluid"><a class="navbar-brand" href="User.php">Thông tin tài khoản</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
                        </nav>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow">
                                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" >
                                    <span class="d-none d-lg-inline mr-2 text-gray-600 small"><?php echo $row['tentk']?></span>
                                    <img class="border rounded-circle img-profile" src="images/avatar5.jpeg"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="#"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="logout.php"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container">
                <div class="row"><h5 style="color: rgb(0,0,0); width:150px; ">Mã tài khoản:</h5><h5 style="color: rgb(0,0,0);"><?php echo $row['matk']?></h5></div>
                <div  class="row"><h5 style="color: rgb(0,0,0);width:150px; ">Tên tài khoản:</h5><h5 style="color: rgb(0,0,0);"><?php echo $row['tentk']?></h5></div>
                <div  class="row"><h5 style="color: rgb(0,0,0);width:150px; ">Email:</h5><h5 style="color: rgb(0,0,0);"><?php echo $row['email']?></h5></div>
                <div  class="row"><h5 style="color: rgb(0,0,0);width:150px; ">Quyền:</h5><h5 style="color: rgb(0,0,0);"><?php echo $maquyen1 ?></h5></div>
                </div>
            </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>Copyright © Brand 2019</span></div>
            </div>
        </footer>
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>

</body>

<?php
include("foot.php");
?>