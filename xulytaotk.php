<?php
    $tentk=$_POST['tentk'];
    $matkhau =$_POST['matkhau'];
    $email =$_POST['email'];
    
    require('connect.php');
    $timemail = "Select * from taikhoan where email='$email' ";
    $result = mysqli_query($conn,$timemail);
    $row = mysqli_fetch_assoc($result);
    $pass = password_hash($matkhau,PASSWORD_DEFAULT);
    $subject = "Mã kích hoạt email";
    $txt=md5(time());
    $headers = "From: duongtienthang123456789@gmail.com";
    if(empty($row['email'])){
        $sql = "INSERT INTO taikhoan(tentk,email,matkhau,maquyen,trangthai,maxacnhan) 
        values ('$tentk','$email','$pass','2','0','$txt');";
        mysqli_set_charset($conn,'UTF8');
        if(mail($email,$subject,$txt,$headers)){
            if(mysqli_query($conn,$sql)){
                echo '<script language="javascript">';
                echo 'alert("Tạo tài khoản thành công");';
                echo 'location.href="Register.php";';
                echo '</script>';
            }
            else{
                echo '<script language="javascript">';
                echo 'alert("Tạo tài khoản thất bại");';
                echo 'location.href="Register.php";';
                echo '</script>';
            }
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Gửi email kích hoạt gặp vấn đề, không thể tạo tài khoản");';
            echo 'location.href="Register.php";';
            echo '</script>';
        };
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("Email đã có tài khoản. Không thể tạo");';
        echo 'location.href="Register.php";';
        echo '</script>';
    }
    mysqli_close($conn);
?>


