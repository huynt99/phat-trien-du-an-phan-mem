<?php
$email =$_POST['email'];
require('connect.php');
$sql = "Select * from taikhoan where email = '$email'";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
$subject = "Mã xác nhận để lấy lại mật khẩu";
$txt=md5(time());
$headers = "From: duongtienthang123456789@gmail.com";
    $sql = "UPDATE taikhoan set maxacnhan = '$txt' where email='$email';";
    mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sql)&mail($email,$subject,$txt,$headers)){
            echo '<script language="javascript">';
            echo 'alert("Gửi mã xác nhận thành công");';
            echo 'location.href="xacnhantk.php?id='.$row['matk'].'";';
            echo '</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Xác nhận tài khoản thất bại");';
            echo 'location.href="login.php";';
            echo '</script>';
        }
?>