<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
$maxacnhan = $_POST['maxacnhan'];
$matk=$_SESSION['matk'];
require('connect.php');
$sql = "Select * from taikhoan where matk = '$matk'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
if( $row['maxacnhan']==$maxacnhan){
    $sql = "UPDATE taikhoan set trangthai = '1' where matk='$matk';";
    mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sql)){
            
            echo '<script language="javascript">';
            echo 'alert("Tài khoản đã được kích hoạt");';
            echo 'location.href="admin.php";';
            echo '</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Kích hoạt tài khoản thất bại");';
            echo 'location.href="login.php";';
            echo '</script>';
        }
}
else{
    echo '<script language="javascript">';
    echo 'alert("Sai mã kích hoạt");';
    echo 'location.href="login.php";';
    echo '</script>';
}
mysqli_close($conn);
?>