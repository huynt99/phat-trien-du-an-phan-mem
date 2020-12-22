<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
include("head.php");
$matk=$_SESSION['matk'];
require('connect.php');
$sqltk = "Select * from taikhoan where matk = '$matk'";
$rowtk = mysqli_fetch_assoc(mysqli_query($conn, $sqltk));
$mathisinh = $_GET['id'];
$sql  = "SELECT `mathisinh`, `hoten`, `gioitinh`, `ngaysinh`, pp._name as 'noisinh', `dantoc`, `ngaycap`, `chungminhthu`, `noicap`,p2._name as 'tinh' ,district._name as 'huyen', t1.tentruong as 'truong10', t2.tentruong as 'truong11', t3.tentruong as 'truong12', `email`, `diachi`, `xaphuong`, `dienthoai`, `namtotnghiep`, `khuvucuutien`, `doituonguutien`,d1._name as 'huyen10',d2._name as 'huyen11',d3._name as 'huyen12',pv1._name as 'tinh10',pv2._name as 'tinh11',pv3._name as 'tinh12', `thonban` FROM `thongtintlisinh`,`province` as pp,province as p2,`district`,truong as t1, truong as t2, truong as t3,district as d1, district as d2, district as d3,province as pv1,province AS pv2, province as pv3 WHERE thongtintlisinh.idtinh = pp.id AND district.id = thongtintlisinh.Idhuyen AND district._province_id = p2.id AND t1.id = thongtintlisinh.idtruong10 AND thongtintlisinh.idtruong11 = t2.id AND t3.id = thongtintlisinh.idtruong12 AND t1.idhuyen = d1.id AND t2.idhuyen = d2.id AND t3.idhuyen = d3.id AND pv1.id = d1._province_id AND pv2.id = d2._province_id AND pv3.id = d3._province_id  AND thongtintlisinh.mathisinh = '$mathisinh'";

mysqli_set_charset($conn, 'UTF8');
$result = mysqli_query($conn, $sql);
$hoten;
$gioitinh;
$ngaysinh;
$noisinh;
$dantoc;
$ngaycap;
$chungminhthu;
$noicap;    
$tinh;
$huyen;
$email;
$diachi;
$xaphuong;
$thonban;
$dienthoai;
$namtotnghiep;
$khuvucuutien;
$doituonguutien;
$truong10;
$truong11;
$truong12;
$tinh10;
$tinh11;
$tinh12;
$huyen10;
$huyen11;
$huyen12;


while ($row = mysqli_fetch_assoc($result)) {
    $hoten = $row['hoten'];
    $gioitinh = $row['gioitinh'];
    $ngaysinh = $row['ngaysinh'];
    $noisinh = $row['noisinh'];
    $dantoc = $row['dantoc'];
    $ngaycap = $row['ngaycap'];
    $chungminhthu = $row['chungminhthu'];
    $noicap = $row['noicap'];
    $tinh = $row['tinh'];
    $huyen = $row['huyen'];
    $truong10 = $row['truong10'];
    $truong11 = $row['truong11'];
    $truong12 = $row['truong12'];
    $tinh10 = $row['tinh10'];
    $tinh11 = $row['tinh11'];
    $tinh12 = $row['tinh12'];
    $huyen10 = $row['huyen10'];
    $huyen11 = $row['huyen11'];
    $huyen12 = $row['huyen12'];
    $email = $row['email'];
    $diachi = $row['diachi'];
    $xaphuong = $row['xaphuong'];
    $thonban = $row['thonban'];
    $dienthoai = $row['dienthoai'];
    $namtotnghiep = $row['namtotnghiep'];
    $khuvucuutien = $row['khuvucuutien'];
    $doituonguutien = $row['doituonguutien'];
}
$sqlnguyenvong  = "SELECT `manguyenvong`, `tennguyenvong`, `maxettuyen`, tohop.tentohop as 'tentohop', `diem10mon1`, `diem10mon2`, `diem10mon3`, `diem11mon1`, `diem11mon2`, `diem11mon3`, `diem12mon1`, `diem12mon2`, `diem12mon3`, `mathisinh` FROM `nguyenvong`,`tohop` WHERE mathisinh = '$mathisinh' AND nguyenvong.matohop = tohop.matohop";
mysqli_set_charset($conn, 'UTF8');
$resultnguyenvong = mysqli_query($conn, $sqlnguyenvong);

$sqlhinhanh = "SELECT `id`, `mathisinh`, `duongdan` FROM `anh` WHERE mathisinh = '$mathisinh'";
mysqli_set_charset($conn, 'UTF8');
$resulthinhanh = mysqli_query($conn, $sqlhinhanh);
?>
<!DOCTYPE html>
<html>

<body id="page-top">
    <div id="wrapper">
    <?php include("menu.php");?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <nav class="navbar navbar-light navbar-expand-md">
                            <div class="container-fluid"><a class="navbar-brand" href="#">Tuyển sinh</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                                <div class="collapse navbar-collapse" id="navcol-2">
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
                    <?php
                    require('connect.php');
                    ?>
                    <?php
                    $sqltinh  = "select * from tinh";
                    mysqli_set_charset($conn, 'UTF8');
                    $resulttinh = mysqli_query($conn, $sqltinh);
                    $resulttinh0 = mysqli_query($conn, $sqltinh);
                    $resulttinh1 = mysqli_query($conn, $sqltinh);
                    $resulttinh2 = mysqli_query($conn, $sqltinh);
                    $resulttinh3 = mysqli_query($conn, $sqltinh);
                    ?>
                    <main class="main-content" style="margin-top:90px">
                        <div class="container">
                            <div class="col">
                                <div class="row">
                                    <div class="col-sm-12 col-12">
                                        <div class="admission-title" style="background:#001373">
                                            <h4><i class="fa fa-info-circle" aria-hidden="true"></i> THÔNG TIN THÍ SINH</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 col-md-8 col-12">
                                        <label>Họ, chữ đệm và tên của thí sinh:</label>
                                          <input id="FullName"  required="required" class="form-control" type="text" value="<?php echo $hoten;?>">
                                        
                                      
                                    </div>
                                    <div class="col-sm-6 col-md-4 col-12">
                                        <label>Giới tính :</label>
                                        <input id="FullName"  required="required" class="form-control" type="text" value="<?php echo $gioitinh;?>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Ngày/tháng/năm sinh:</label>
                                        <input type="date"  value="<?php echo $ngaysinh;?>" id="BirthDate" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Nơi sinh :</label>
                                        <input id="FullName"  required="required" class="form-control" type="text" value="<?php echo $noisinh;?>">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Dân tộc :</label>
                                        <input id="FullName"  required="required" class="form-control" type="text" value="<?php echo $dantoc;?>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Chứng minh thư nhân dân:</label>
                                        <input type="text" value="<?php echo $chungminhthu;?>" class="form-control" id="CitizenId" placeholder="Số chứng minh nhân dân hoặc căn cước công dân">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Ngày cấp :</label>
                                        <input type="date" value="<?php echo $ngaycap;?>" id="CitizenIdIssueDate" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Nơi cấp :<small>(ghi theo cmnd/cccd)</small></label>
                                        <input type="text"  value="<?php echo $noicap;?>"class="form-control " id="CitizenIdIssuePlace">
                                    </div>
                                </div>
                                <!--Hộ khẩu thường trú-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div style="border-bottom:1px solid #AAA;padding-top:20px">
                                            <label>Hộ khẩu thường trú</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Tỉnh/TP :</label>
                                        <input type="text"  value="<?php echo $tinh;?>"class="form-control " id="CitizenIdIssuePlace">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Quận/huyện:</label>
                                        <input type="text"  value="<?php echo $huyen;?>"class="form-control " id="CitizenIdIssuePlace">
                                         
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Xã/phường :</label>
                                        <input type="text"  value="<?php echo $xaphuong;?>"class="form-control " id="CitizenIdIssuePlace">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-12">
                                        <label>Thôn/bản/đường phố :</label>
                                        <input type="text" value="<?php echo $thonban;?>" class="form-control " id="Address">
                                    </div>
                                </div>

                                <!--Nơi học lớp 10 THPT-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div style="border-bottom:1px solid #AAA;padding-top:20px">
                                            <label>Nơi học lớp 10 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Tỉnh/TP :</label>
                                        <input type="text" value="<?php echo $tinh10;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Quận/huyện:</label>
                                        <input type="text" value="<?php echo $huyen10;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Trường THPT :</label>
                                        <input type="text" value="<?php echo $truong10;?>" class="form-control " id="Address">
                                    </div>
                                </div>

                                <!--Nơi học lớp 11 THPT-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div style="border-bottom:1px solid #AAA;padding-top:20px">
                                            <label>Nơi học lớp 11 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Tỉnh/TP :</label>
                                        <input type="text" value="<?php echo $tinh11;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Quận/huyện:</label>
                                       <input type="text" value="<?php echo $huyen11;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Trường THPT :</label>
                                        <input type="text" value="<?php echo $truong11;?>" class="form-control " id="Address">
                                    </div>
                                </div>

                                <!--Nơi học lớp 12 THPT-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div style="border-bottom:1px solid #AAA;padding-top:20px">
                                            <label>Nơi học lớp 12 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-12">
                                        <label>Tỉnh/TP :</label>
                                        <input type="text" value="<?php echo $truong12;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Quận/huyện:</label>
                                        <input type="text" value="<?php echo $huyen12;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Trường THPT :</label>
                                        <input type="text" value="<?php echo $truong12;?>" class="form-control " id="Address">
                                    </div>
                                </div>
                                <!--Thông tin liên hệ-->
                                <div class="row">
                                    <div class="col-sm-6 col-12">
                                        <label>Điện thoại liên lạc :</label>
                                        <input type="text" value="<?php echo $dienthoai;?>" class="form-control " id="Address">
                                        
                                    </div>
                                    <div class="col-sm-6 col-12">
                                        <label>Email:</label>
                                        <input type="text" value="<?php echo $email;?>" class="form-control " id="Address">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-12">
                                        <label>Địa chỉ liên hệ :</label>
                                        <input type="text" value="<?php echo $diachi;?>" class="form-control " id="Address">
                                    </div>
                                </div>

                                <div class="row" style="padding-bottom:30px">
                                    <div class="col-sm-4 col-12">
                                        <label>Năm tốt nghiệp :</label>
                                        <input type="text" value="<?php echo $namtotnghiep;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Khu vực ưu tiên:</label>
                                        <input type="text" value="<?php echo $khuvucuutien;?>" class="form-control " id="Address">
                                    </div>
                                    <div class="col-sm-4 col-12">
                                        <label>Đối tượng ưu tiên (nếu có):</label>
                                        <input type="text" value="<?php echo $doituonguutien;?>" class="form-control " id="Address">
                                    </div>
                                </div>
                            </div>
                            <div ng-show="item.Id>0" class="">
                                <div class="row">
                                    <div class="col-sm-12 col-12">
                                        <div class="admission-title" style="background:#001373" id="aspire">
                                            <h4><i class="fa fa-info-circle" aria-hidden="true"></i> THÔNG TIN ĐĂNG KÝ XÉT TUYỂN</h4>
                                        </div>
                                    </div>
                                </div>
                               <div>
                                    <div class="row">
                                        <table class="table table-bordered table-hover ng-hide" style="background-color:white">
                                            <thead class="bill-header cs">
                                                <tr>
                                                    <th>TT</th>
                                                    <th>Nguyện vọng</th>
                                                    <th>Mã xét tuyển</th>
                                                    <th>Tổ hợp xét tuyển</th>
                                                    <th>Điểm THPT</th>
                                                    <th>Tổng điểm</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $count = 0;
                                                while( $row = mysqli_fetch_array($resultnguyenvong,MYSQLI_ASSOC) ){ 
                                                    $count++;
                                                    ob_start();
                                                ?>
                                                <tr style="background-color: bisque;">
                                                    <th>{stt}</th>
                                                    <th>{nguyenvong}</th>
                                                    <th>{maxettuyen}</th>
                                                    <th>{tohop}</th>
                                                    <th>{diem}</th>
                                                    <th>{tongdiem}</th>
                                                </tr>
                                                <?php
                                                $s = ob_get_clean();
                                                $tongdiem = $row["diem10mon1"]+$row["diem10mon2"]+$row["diem10mon3"]+$row["diem11mon1"]+$row["diem11mon2"]+$row["diem11mon3"]+$row["diem12mon1"]+$row["diem12mon2"]+$row["diem12mon2"];
                                                $s = str_replace("{stt}",$count , $s);
                                                $s = str_replace("{nguyenvong}", $row["tennguyenvong"], $s);
                                                $s = str_replace("{maxettuyen}", $row["maxettuyen"], $s); // thay thế
                                                $s = str_replace("{tohop}", $row["tentohop"], $s);
                                                if($row["tentohop"] == 'A00'){
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Lý:".$row["diem10mon2"].", Hóa:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Lý:".$row["diem11mon2"].", Hóa:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Lý:".$row["diem12mon2"].", Hóa:".$row["diem12mon3"]."", $s);
                                                }elseif ($row["tentohop"] == 'A01') {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Lý:".$row["diem10mon2"].", Anh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Lý:".$row["diem11mon2"].", Anh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Lý:".$row["diem12mon2"].", Anh:".$row["diem12mon3"]."", $s);
                                                }elseif ($row["tentohop"] == 'A02') {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Lý:".$row["diem10mon2"].", Sinh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Lý:".$row["diem11mon2"].", Sinh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Lý:".$row["diem12mon2"].", Sinh:".$row["diem12mon3"]."", $s);
                                                }elseif ($row["tentohop"] == 'B00') {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Hóa:".$row["diem10mon2"].", Sinh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Hóa:".$row["diem11mon2"].", Sinh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Hóa:".$row["diem12mon2"].", Sinh:".$row["diem12mon3"]."", $s);
                                                }elseif ($row["tentohop"] == 'D01') {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Văn:".$row["diem10mon2"].", Anh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Văn:".$row["diem11mon2"].", Anh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Văn:".$row["diem12mon2"].", Anh:".$row["diem12mon3"]."", $s);
                                                }elseif ($row["tentohop"] == 'A07') {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Hóa:".$row["diem10mon2"].", Anh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Hóa:".$row["diem11mon2"].", Anh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Hóa:".$row["diem12mon2"].", Anh:".$row["diem12mon3"]."", $s);
                                                }else {
                                                     $s = str_replace("{diem}", "Lớp 10:  "."Toán:".$row["diem10mon1"].", Sinh:".$row["diem10mon2"].", Anh:".$row["diem10mon3"]." - Lớp 11: "."Toán:".$row["diem11mon1"].", Sinh:".$row["diem11mon2"].", Anh:".$row["diem11mon3"]."- Lớp 12: "."Toán:".$row["diem12mon1"].", Sinh:".$row["diem12mon2"].", Anh:".$row["diem12mon3"]."", $s);
                                                }
                                               
                                                $s = str_replace("{tongdiem}", $tongdiem, $s);
                       

                                                 echo $s;
                                            }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--End Nguyện vọng-->
                                </div>
                                <!--Minh chứng-->
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-sm-12 col-12">
                                            <div class="admission-title" style="background:#001373" id="aspire">
                                                <h4><i class="fa fa-info-circle" aria-hidden="true"></i> FILE CHỨNG MINH</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <table class="table table-bordered table-hover ng-hide" style="background-color:white">
                                            <thead class="bill-header cs">
                                                <tr>
                                                    <th>TT</th>
                                                
                                                
                                                    <th>Hình Ảnh</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $count = 0;
                                                while( $row = mysqli_fetch_array($resulthinhanh,MYSQLI_ASSOC) ){ 
                                                    $count++;
                                                    ob_start();
                                                ?>
                                                <tr style="background-color: bisque;">
                                                    <th>{stt}</th>
                                                    <td><a href="#"></a><br />
                                                    <img style="float:left; margin-right:5px" src="{hinhanh}" width="142" height="96" /><br /></td>
                                                
                                                    
                                                </tr>
                                                <?php
                                                 $s = ob_get_clean();
                                                 $s = str_replace("{stt}",$count , $s);
                                            
                                                 $s = str_replace("{hinhanh}","http://localhost:81/BTL_HTTTDL/phattrienduanphanmem1/Hinhanh_cmt/".$row['duongdan'] , $s);
                                                 echo $s;
                                            }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="row" style="padding-bottom:30px">
                                    <div class="col-sm-12 col-12 pull-right">
                                        <div class="col-sm-2 col-12">
                                            <button type="button" class="btn btn-block btn-primary btn-lg" style="font-size:14px;text-transform:uppercase;color:#fff">
                                             Thí sinh trước
                                            </button>
                                            <button type="button" class="btn btn-block btn-primary btn-lg" style="font-size:14px;text-transform:uppercase;color:#fff">
                                             Chuyển sang đơn đã duyệt
                                            </button>
                                            <button type="button" class="btn btn-block btn-primary btn-lg" style="font-size:14px;text-transform:uppercase;color:#fff">
                                             Thí sinh sau
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2019</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/Table-With-Search.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>