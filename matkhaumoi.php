<?php
if(isset($_GET['id'])){
include("head.php");
$matk=$_GET['id'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
?>
<body id="page-top">
<div id="formWrapper">
    <div id="form">
        <div class= "text-center">
            <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">Nhập mật khẩu mới</h2>
        </div>
        <form action="xulymatkhaumoi.php?id=<?php echo $matk?>"method="POST">
        <div class="form-item">
            <input class="form-control" id="matkhau"name="matkhau" type="password" placeholder="Mật khẩu mới" required autofocus>
        </div>
        <div class="form-item">
            <input class="form-control" id="nhaplai"name="nhaplai" type="password" placeholder="Nhập lại mật khẩu" required autofocus>
        </div>
        <button id="kichhoat" type="submit" class="btn_login pull-right" name="kichhoat" style="width: 113px;">Đổi mật khẩu</button>
        </form>
    </div>
    </div>
</body>
<?php
include("foot.php");}
else{
    header('Location: login.php');
}
?>