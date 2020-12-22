<?php
include("header.php");
?>
<div class="banner-item slick-slide slick-current slick-active" style="margin-top:50px">
    <img src=images/banner-img-3.jpg >
</div>
<main class="main-content">
    <div class="container">
        <div style="margin-top:20px"></div>
        <div class="admission">
            <div class="Normal">
	            <div class="heading">
                    <h3 class="title typescale-1">Tuyển sinh</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-lg-9 col-featured">
                    <div class="row featured">
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope">
                                <div class="featured-img">
                                    <a href="tuyensinhdaihoc.php"><img alt="Tin tuyển sinh đại học" src="images/featured-thumb1.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a  class="ng-binding" href="tsdaihoc.php">Tuyển sinh đại học</a></h3>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope">
                                <div class="featured-img">
                                    <a href="tuyensinhthacsi.php"><img alt="Tin tuyển sinh đại học" src="images/featured-thumb2.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a  class="ng-binding" href="chuongtrinhdhcq.php">Đào tạo đại học</a></h3>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope">
                                <div class="featured-img">
                                    <a href="tuyensinhtiensi.php"><img alt="Tin tuyển sinh đại học" src="images/featured-thumb3.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a  class="ng-binding" href="nganhdaotao.php?id=TLA101">Ngành đào tạo</a></h3>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope">
                                <div class="featured-img">
                                    <a href="nganhdaotaodaihoc.php"><img alt="Tin tuyển sinh đại học" src="images/totnghiepdhthumb.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a  class="ng-binding" href="hocphi.php">Học phí của trường</a></h3>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope">
                                <div class="featured-img">
                                    <a href="nganhdaotaothacsi.php"><img alt="Tin tuyển sinh đại học" src="images/thacsithumb.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a  class="ng-binding" href="diemchuan.php">Điểm chuẩn của trường</a></h3>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="featured-item ng-scope" >
                                <div class="featured-img">
                                    <a href="nganhdaotaotiensi.php"><img alt="Tin tuyển sinh đại học" src="images/doctorate.jpg"></a>
                                </div>
                                <h3 class="featured-title"><a class="ng-binding" href="kehoachdhcq.php">Kế họach đào tạo đại học</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="block-ads">
                        <div id="dnn_ctr1509_HtmlModule_lblContent" class="Normal">
                            <p><a href="xettuyentructuyen.php"><img alt="Image" src="images/XetTuyenBanner.jpg"> </a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3 col-qa">
                    <div class="qa ng-scope" ng-controller="myCntrl1591">
                     <?php 
                        include("./formquestion.php");
                     ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-news">
            
        </div>
    </div>
    <hr>
    <!--Begin menu tin tuc thong bao -->
    <div class="container">
        <div class="primary-content">
        <div class="row">
        <div class="col-md-5" style="margin-left:10px">
        <!--Begin Tab-->
        <div class="nav-tabs" style="height:43px">
            <button class="tablink nav-link active" onclick="openPage('News', this, 'white')" id="defaultOpen" style="background-color: white;">Tin tức</button>
            <button class="tablink nav-link" onclick="openPage('Inform', this, 'white')">Thông báo</button>
        </div>

        <div id="News" class="tabcontent" style="display: block;">
            <div class="row-">
                <ul class="unstyle-dot">
                <?php
                require('connect.php');
                                $resulttt = mysqli_query($conn, "SELECT * from baiviet Where chude='Tin tức' ORDER BY ngaytao DESC LIMIT 5");
                                while ($rowtt = mysqli_fetch_assoc($resulttt)) {
                                 echo '<li><a href="chitiettin.php?idtin='.$rowtt['mabv'].'">'.$rowtt['tieude'].'</a></li>';
                                }
                            ?>
                </ul>
                <div class="text-right pt-3" style="width:100%">
                    <a href="tintuc.php">
                        <i class="fa fa-angle-double-right"></i>Xem tất cả
                    </a>
                </div>
            </div>
        </div>

        <div id="Inform" class="tabcontent" style="display: none;">
            <div class="row-">
                <ul class="unstyle-dot">
                <?php
                                $resulttb = mysqli_query($conn, "SELECT * from baiviet Where chude='Thông báo' ORDER BY ngaytao DESC LIMIT 5");
                                while ($rowtb = mysqli_fetch_assoc($resulttb)) {
                                 echo '<li><a href="chitiettin.php?idtin='.$rowtb['mabv'].'">'.$rowtb['tieude'].'</a></li>';
                                }
                            ?>
                </ul>
                <div class="text-right pt-3" style="width:100%">
                    <a class="more" href="thongbao.php">
                        <i class="fa fa-angle-double-right"></i>Xem tất cả
                    </a>
                </div>
            </div>
        </div>
        <!--End Tab-->
    </div>
    <div class="col-md-6" style="margin-left:50px">
        <div class="news-content ng-binding" ng-bind-html="Content">
        <h1 style="text-align:center; padding: 10px 0px;">Trường Đại học Thủy lợi tuyển sinh 2020 - Đón đầu xu thế</h1>
        <p>Trường Đại học Thủy lợi mở rộng quy mô đào tạo ở cả 3 địa chỉ là Hà Nội, Cơ sở Phố Hiến – tỉnh Hưng Yên và Phân hiệu Miền Nam. Năm 2020, Trường tuyển sinh với 3700 chỉ tiêu thuộc 23 ngành và nhóm ngành, trong đó có 2 ngành giảng dạy bằng Tiếng Anh</p>
        <p><iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/K_S5WknOqNA" width="560"></iframe></p>
        </div>
    </div>
    
    <script>
        function openPage(pageName, elmnt, color) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].style.backgroundColor = "";
                tablinks[i].classList.remove("active");
            }
            document.getElementById(pageName).style.display = "block";
            elmnt.style.backgroundColor = color;
            elmnt.classList.add("active");
        }
        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click();
    </script>
    <style>
        * {
            box-sizing: border-box
        }
        .tablink {
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 8px 10px;
            font-size: 17px;
            width: 50%;
        }

            .tablink:hover {
                background-color: #ccc;
            }

        .tabcontent {
            display: none;
            padding: 2px 15px 12px 0px;
        }

        #Inform {
            background-color: white;
        }

        #News {
            background-color: white;
        }
    </style>

                
            </div>
        </div>
    </div>
    <!--End menutintuc thong bao-->
</main>
<?php
include("footer.php");
?>