<!doctype html>
<html lang="en">
  <head>
    <title>Cổng thông tin trường đại học Thủy Lợi</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
    <!-- Bootstrap CSS --> 
    <link rel="stylesheet" href="webfonts/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="xettuyen.css">
    
  </head>
  <body>
    
<!-- BEGIN: HEADER -->
<header class="header-page">
    <div class="container">
      <div class="row align-items-end">
        <div class="col-md-7">
          <div class="header-brand">
            <a href="#">
                <img src="images/logo.png" alt="Trường Đại học Thủy lợi" class="d-none d-md-block">
            </a>
          </div>
        </div>
        <div class="col-md-5">
          <div class="header-right">
            <ul class="header-links">
              <li><a href="#">Đăng ký</a></li>
              <li><a href="login.php">Đăng nhập</a></li>
              <li><a href="#">Liên hệ</a></li>
            </ul>
<!--Begin Search-->
    <div class="header-search ng-scope" ng-controller="myCntrl1533">
        <div class="form-search">
            <input class="form-control" type="text" id="tbxHomekeyword" placeholder="Tìm kiếm">
            <input type="button" class="form-submit" ng-click="formClick()">
        </div>
    </div>  
<!--End Search-->
            <div class="languages">
              <a href="#"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
<!-- END: HEADER -->
<section class="section-banner">
    <div class="navigation">
      <div class="container">
    <nav class="mainmenu" id="mainmenu">
    <ul class="menu clearfix">
            <li><a href="index.php"><i class="fa fa-home" aria-hidden="true" style="font-size:130%"></i></a></li>
            <li><a>Tin tức & thông báo</a>
              <ul class="sub-menu">
                  <li><a  href="tintuc.php">Tin tức</a></li>
                  <li><a  href="thongbao.php">Thông báo</a></li>
              </ul>
            </li>
            <li>
                <a>Tuyển sinh</a>
                <ul class="sub-menu">
                    <li><a  href="tsdaihoc.php">Đại học chính quy</a></li>
                    <li><a  href="tsthacsi.php">Thạc sĩ</a></li>
                    <li><a  href="tstiensi.php">Tiến sĩ</a></li>
                    <li><a  href="tsvanbang2.php">Văn bằng 2</a></li>
                    <li><a  href="tsvuahocvualam.php">Vừa học vừa làm</a></li>
                    <li><a  href="tslienthong.php">Tuyển sinh liên thông</a></li>
                </ul>
            </li>
            <li>
                <a>Đạo tạo</a>
                <ul class="sub-menu">
                    <li><a  href="chuongtrinhdhcq.php">Đại học chính quy</a></li>
                    <li><a  href="chuongtrinhths.php">Thạc sĩ</a></li>
                    <li><a  href="chuongtrinhts.php">Tiến sĩ</a></li>
                    <li><a  href="chuongtrinhvhvl.php">Vừa học vừa làm</a></li>
                </ul>
            </li>
            <li>
                <a>Các ngành đào tạo</a>
                <ul class="sub-menu">
                  <?php
                  include("connect.php");
                  $result=mysqli_query($conn, "select * from nganh where macoso='1'");
                  while($row = mysqli_fetch_array($result)){
                      echo '<li><a href="nganhdaotao.php?id='.$row['manganh'].'">' .$row['tennganh']. '</a></li>';
                  }
                  mysqli_close($conn);
                  ?>
                </ul>
            </li>
            <li>
                <a>Sinh viên</a>
                <ul class="sub-menu">
                  <li><a href="hocphi.php">Học phí</a></li>
                  <li><a href="diemchuan.php">Điểm chuẩn</a></li>
                  <li><a href="#">Tra cứu thông tin</a></li>
                </ul>
            </li>
            <li>
                <a href="hoidap.php">Hỏi đáp</a>
            </li>
            <li>
                <a href="xettuyentructuyen.php">Đăng ký xét tuyển đại học</a>
            </li>
        </ul>
        </nav>
    </div>
</div>
</section>
