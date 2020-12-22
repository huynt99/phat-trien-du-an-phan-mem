<?php
include("header.php");
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
                <?php include("menuctdt.php");?>
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="heading1">
                        <h3 class="title typescale-1">Kế hoạch đào tạo tiến sĩ</h3>
                    </div>
                    <ul class="related-list" stype="list-style:none">
                    <?php
                        require('connect.php');
                        $sql = "Select * from baiviet where chude = 'Kế hoạch đào tạo tiến sĩ'";
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