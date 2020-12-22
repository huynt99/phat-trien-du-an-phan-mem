<?php
include("header.php");
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
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
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="heading1">
                        <h3 class="title typescale-1">Thông báo</h3>
                    </div>
                    <ul class="related-list" stype="list-style:none">
                    <?php
                        require('connect.php');
                        $sql = "Select * from baiviet where chude = 'Thông báo'";
                        $result = mysqli_query($conn, $sql);
                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                    ?>
                        <li ng-repeat="item in AllMoreItems" class="ng-scope">
                            <div class="row">
                                <div class="col-sm-3">
                                    <figure class="figure">
                                        <a href="chitiettin.php?<?php echo "idtin=".$row['mabv']?>">
                                            <img class="img-responsive" alt="Image" src="<?php echo $row['anh']; ?>">
                                        </a>
                                    </figure>
                                </div>
                                <div class="col-sm-9" style="text-align:justify">
                                    <h3 class="related-title">
                                        <a href="chitiettin.php?<?php echo "idtin=".$row['mabv']?>" class="ng-binding"><?php echo $row['tieude'] ?></a>
                                    </h3>
                                    <p class="time-post ng-binding" ng-bind="item.PublishTime | date:'dd/MM/yyyy HH:mm'" style="font-size:12px"><?php echo $row['ngaytao']; ?></p>
                                    <p ng-bind-html="item.Description" class="ng-binding"><?= $row['tomtat']; ?></p>
                                    <p class="text-right font-16px"><a href="chitiettin.php?<?php echo "idtin=".$row['mabv']?>"><i class="fa fa-angle-right"></i> <em>Xem chi tiết</em></a></p>
                                </div>
                            </div>
                        </li>
                        <?php }} mysqli_close($conn); ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</main>
<?php
include("footer.php");
?>