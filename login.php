<?php
include("head.php");
?>

<body id="page-top">
<div id="formWrapper">
    <div id="form">
        <div class="logo">
          <img src="images/logo.png" alt="" style="max-width: 250px;" />
        </div>
        <form action="xulydangnhap.php"method="POST">
            <div class="form-item">
            <input class="form-control" id="email"name="email" type="email" placeholder="Địa chỉ email" required autofocus>
            </div>
            <div class="form-item">
            <input class="form-control" id="matkhau"name="matkhau" type="password" placeholder="Mật khẩu" required>
            <p><a href="quenmk.php"><small>Quên mật khẩu</small></a></p>
            <p id="errors"></p>
            </div>
            <a class= "a_back" href="index.php"><button id="btn_back" type="button" class="btn_login pull-left" name="btnback">Back</button></a>
            <button id="btnlogin" type="submit" class="btn_login pull-right" name="btnlogin">Log In</button>
            <div class="clear-fix"></div>
      </form>
      </div>
    </div>
</body>
<?php
include("foot.php");
?>