<?php
include("header.php");
$mabv=$_GET['idtin'];
require('connect.php');
$sql = "Select * from baiviet where mabv = '$mabv'";
$result = mysqli_fetch_assoc(mysqli_query($conn, $sql));
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
                <?php if($result['chude']=="Tin tức"||$result['chude']=="Thông báo")
                {?>
                <div class="col-md-4 col-lg-3 slide-left mb-4 mb-md-0">
                    <div class="tlu-menu ng-scope" ng-controller="myCntrl1534">
                        <div class="heading1">
                            <h3 class="title typescale-4"><a href="#">Tin tức & thông báo</a><i class="fa fa-angle-down d-md-none"></i></h3>
                        </div>
                        <div class="column-2">
                            <ul style="padding-left: 0px;">
                                <li><a  href="tintuc.php">Tin tức</a></li>
                                <li><a  href="thongbao.php">Thông báo</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php
                }
                else {
                    include("menuctdt.php");
                }
                ?>
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="col-md-12" style="border: 1px solid #ff6e00;">
                        <h1 style="text-align:center; padding: 10px 0px;"><?php echo $result['tieude']; ?></h1>
                        <p style="padding: 15px 0px; font-size:15px"><?php echo $result['ngaytao'];?></p>
                        <p><?php echo $result['noidung'];?></p>
                    </div>
                    <h1 style="margin-top:30px">Các tin khác</h1>
                    <div>
                        <ul>
                            <?php
                                $resultbv = mysqli_query($conn, "SELECT * from baiviet ORDER BY ngaytao DESC LIMIT 3");
                                while ($rowpost = mysqli_fetch_assoc($resultbv)) {
                                 echo '<li><a href="chitiettin.php?idtin='.$rowpost['mabv'].'">'.$rowpost['tieude'].'</a></li>';
                                }
                            ?>
                        </ul>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
</main>
<?php
include("footer.php");
?>