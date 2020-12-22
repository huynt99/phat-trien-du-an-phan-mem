<?php
include("head.php");

?>
<body id="page-top">
<div id="formWrapper">
    <div id="form">
        <div class= "text-center">
            <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">Tài khoản của bạn chưa được kích hoạt.</h2>
            <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">Hãy nhập mã kích hoạt.</h2>
        </div>
        <form action="xulykichhoat.php" method="POST">
        <div class="form-item">
            <input class="form-control" id="maxacnhan"name="maxacnhan" type="text" placeholder="Mã kích hoạt" required autofocus>
        </div>
        <button id="kichhoat" type="submit" class="btn_login pull-right" name="kichhoat">Kích hoạt</button>
        </form>
    </div>
    </div>
</body>
<?php
include("foot.php");
?>