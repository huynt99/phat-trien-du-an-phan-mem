<?php
include("header.php");
require('connect.php');
$result = mysqli_fetch_assoc(mysqli_query($conn, "Select * from baiviet where chude = 'Học Phí'"));
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
                <?php include("menusinhvien.php");?> 
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="col-md-12" style="border: 1px solid #ff6e00;">
                        <h1 style="text-align:center; padding: 10px 0px;"><?php echo $result['tieude']; ?></h1>
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