<?php
include("head.php");
require('connect.php');
?>
<body id="page-top">
<div id="formWrapper">
    <div id="form">
        <div class= "text-center">
            <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">Nhập email để lấy lại mật khẩu</h2>
        </div>
        <form action="guimaxacnhan.php"method="POST">
        <div class="form-item">
            <input class="form-control" id="email"name="email" type="text" placeholder="Nhập email của bạn" required autofocus>
        </div>
        <button id="kichhoat" type="submit" class="btn_login pull-right" name="kichhoat"style="height: 50px;">Xác nhận email</button>
        </form>
    </div>
    </div>
</body>
<?php
include("foot.php");
?>