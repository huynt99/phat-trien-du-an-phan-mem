<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
include("head.php");
$matk=$_SESSION['matk'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
?>

<body id="page-top">
    <div id="wrapper">
    <?php include("menu.php");?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <nav class="navbar navbar-light navbar-expand-md">
                            <div class="container-fluid"><a class="navbar-brand" href="#">Tuyển sinh</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                                <div
                                    class="collapse navbar-collapse" id="navcol-2">
                                    <ul class="nav navbar-nav">
                                        <li class="nav-item" role="presentation"><a class="nav-link" href="TuyenSinhQuanLyDonChuaDuyet.php">Đơn chưa duyệt</a></li>
                                        <li class="nav-item" role="presentation"><a class="nav-link active" href="TuyenSinhQuanLyDonDaDuyet.php">Đơn đã xét duyệt</a></li>
                                        <li class="nav-item" role="presentation"><a class="nav-link" href="TuyenSinhDonTrungTuyen.php"><br>Đơn trúng tuyển<br><br></a></li>
                                        <li class="nav-item" role="presentation"><a class="nav-link" href="TuyenSinhQuanLyDonLoaiBo.php">Đơn loại bỏ</a></li>
                                    </ul>
                            </div>
                    </div>
                    </nav>
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small"><?php echo $row['tentk']?></span><img class="border rounded-circle img-profile" src="images/avatar5.jpeg"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="hoso.php"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="logout.php"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>
                                </div>
                            </li>
                        </ul>
        </div>
        </nav>
        <div class="container">
            <div>
                <hr></div>
            <div class="table-responsive table-bordered table table-hover table-bordered results">
                <table class="table table-bordered table-hover">
                    <thead class="bill-header cs">
                        <tr>
                            <th id="trs-hd" width="5%">Stt</th>
                            <th id="trs-hd" width="10%">ID Thí sinh</th>
                            <th id="trs-hd" width="15%">Họ tên thí sinh</th>
                            <th id="trs-hd" width="10%">Ngày sinh</th>
                            <th id="trs-hd" width="10%">CMT</th>
                            <th id="trs-hd" width="10%">TỈnh</th>
                            <th id="trs-hd" width="5%">Giới tính</th>
                        
                            <th id="trs-hd" width="15%">Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $qr = "SELECT thongtintlisinh.mathisinh,thongtintlisinh.hoten,thongtintlisinh.ngaysinh,thongtintlisinh.chungminhthu,province._name,thongtintlisinh.gioitinh FROM `thongtintlisinh`,`province` WHERE thongtintlisinh.idtinh = province.id AND thongtintlisinh.trangthai = 2";
                        $result = mysqli_query($conn, $qr);
                        mysqli_set_charset($conn, 'UTF8');
                        $count = 0;
                        while( $row_account = mysqli_fetch_array($result,MYSQLI_ASSOC) ){ 
                        $count++;
                        ob_start();// cho tất cả html thành 1 biến
                        ?>
                        <tr>
                            <td>{stt}</td>
                            <td>{id}</td>
                            <td>{hoten}</td>
                            <td>{ngaysinh}</td>
                            <td>{cmt}</td>
                            <td>{tinh}</td>
                            <td>{gioitinh}</td>
                            <td class="text-center"><a class="btn btn-success" role="button" style="margin-left: 5px;" href="TuyenSinhChiTietDon.php?id={id}"><i class="fa fa-folder-open-o" style="font-size: 15px;"></i></a>
                                
                            </td>
                        </tr>
                        <?php
                        $s = ob_get_clean();
                        $s = str_replace("{stt}",$count , $s);
                        $s = str_replace("{gioitinh}", $row_account["gioitinh"], $s);
                        $s = str_replace("{id}", $row_account["mathisinh"], $s); // thay thế
                        $s = str_replace("{hoten}", $row_account["hoten"], $s);
                        $s = str_replace("{ngaysinh}", $row_account["ngaysinh"], $s);
                        $s = str_replace("{cmt}", $row_account["chungminhthu"], $s);
                        $s = str_replace("{tinh}", $row_account["_name"], $s);
                        $s = str_replace("{gioitinh}", $row_account["gioitinh"], $s);

                        echo $s;
                    }
                        ?>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <footer class="bg-white sticky-footer">
        <div class="container my-auto">
            <div class="text-center my-auto copyright"><span>Copyright © Brand 2019</span></div>
        </div>
    </footer>
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/Table-With-Search.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
