<?php
$matk=$_GET['id'];
$maxacnhan=$_POST['maxacnhan'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
if($row['maxacnhan']==$maxacnhan){
    echo '<script language="javascript">';
    echo 'alert("Xác nhận tài khoản thành công");';
    echo 'location.href="matkhaumoi.php?id='.$matk.'";';
    echo '</script>';
}
else{
    echo '<script language="javascript">';
    echo 'alert("Mã xác nhận không đúng");';
    echo 'location.href="quenmk.php";';
    echo '</script>';
}
mysqli_close($conn);
?>