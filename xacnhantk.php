<?php
if(isset($_GET['id'])){
include("head.php");
$matk=$_GET['id'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
$matk = $row['matk'];
?>
<body id="page-top">
<div id="formWrapper">
    <div id="form">
        <div class= "text-center">
            <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">Xác nhận tài khoản</h2>
        </div>
        <form action="xulyxacnhantk.php?id=<?php echo $matk?>"method="POST">
        <div class="form-item">
            <input class="form-control" id="maxacnhan"name="maxacnhan" type="text" placeholder="Mã xác nhận" required autofocus>
        </div>
        <button id="kichhoat" type="submit" class="btn_login pull-right" name="kichhoat">Xác nhận</button>
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