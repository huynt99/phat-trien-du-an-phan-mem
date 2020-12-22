<?php
include("header.php");
$manganh=$_GET['id'];
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
                <?php include("menunganh.php");?>
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="post">
                        <?php
                            require('connect.php');
                            $sql="select * from nganh where manganh='$manganh'";
                            $rownganh = mysqli_fetch_assoc(mysqli_query($conn, $sql));
                            Switch($rownganh['manganh']){
                                case 'TLA101':$anhnganh='images/image_nganh/KTXDCTThuy.jpg';break;
                                case 'TLA102':$anhnganh='images/image_nganh/KTTNN_1.jpg';break;
                                case 'TLA103':$anhnganh='images/image_nganh/Thuy van hoc.jpg';break;
                                case 'TLA104':$anhnganh='images/image_nganh/KTXD.jpg';break;
                                case 'TLA105':$anhnganh='images/image_nganh/KT CO khi.jpg';break;
                                case 'TLA106':$anhnganh='images/image_nganh/Nhom nganh CNTT.jpg';break;
                                case 'TLA107':$anhnganh='images/image_nganh/KT CTN_1.jpg';break;
                                case 'TLA109':$anhnganh='images/image_nganh/Ky thuat moi truong.jpg';break;
                                case 'TLA110':$anhnganh='images/image_nganh/KTCSHT_1.jpg';break;
                                case 'TLA111':$anhnganh='images/image_nganh/CN KTXD.jpg';break;
                                case 'TLA112':$anhnganh='images/image_nganh/Ky thuat dien 1505.jpg';break;
                                case 'TLA113':$anhnganh='images/image_nganh/KTXD CTGT.jpg';break;
                                case 'TLA114':$anhnganh='images/image_nganh/Quan ly xay dung_1.jpg';break;
                                case 'TLA118':$anhnganh='images/image_nganh/KTHH.jpg';break;
                                case 'TLA119':$anhnganh='images/image_nganh/Nganh Cong nghe sinh hoc.jpg';break;
                                case 'TLA120':$anhnganh='images/image_nganh/KT Co dien tu.jpg';break;
                                case 'TLA121':$anhnganh='images/image_nganh/Dieu khien va tu dong hoa.jpg';break;
                                case 'TLA123':$anhnganh='images/image_nganh/KT o to.jpg';break;
                                case 'TLA401':$anhnganh='images/image_nganh/Kinh te.jpg';break;
                                case 'TLA402':$anhnganh='images/image_nganh/Nganh Quan tri kinh doanh 1305.jpg';break;
                                case 'TLA403':$anhnganh='images/image_nganh/Ke toan_1.jpg';break;
                            }
                        ?>
                        <div class="heading">
                            <h3 class="title typescale-1 ng-binding" id="tieude" name="tieude"><?php echo $rownganh['tennganh']?></h3>
                        </div>
                        <div class="post-content ng-binding"><p><img alt="" src="<?php echo $anhnganh?>" title="">​<br></p><div></div></div>
                        <h1 style="margin-top:70px">Các tin khác</h1>
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
    </div>
</main>
<?php
include("footer.php");
?>