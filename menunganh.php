
<div class="col-md-4 col-lg-3 slide-left mb-4 mb-md-0">
    <div class="category">
        <div class="heading2">
            <h3 class="title typescale-4"><a href="#">Ngành đào tạo ĐẠI HỌC</a><i class="fa fa-angle-down d-md-none"></i></h3>
        </div>
        <div class="category-content">
            <ul class="category-list">
                <?php
                    include("connect.php");
                    $result=mysqli_query($conn, "select * from nganh where macoso='1'");
                    while($row = mysqli_fetch_array($result)){
                        echo '<li style="list-style:disc;margin-left:10px"><a href="nganhdaotao.php?id='.$row['manganh'].'">' .$row['tennganh']. '</a></li>';
                    }
                ?>
            </ul>
        </div>
    </div>
</div>