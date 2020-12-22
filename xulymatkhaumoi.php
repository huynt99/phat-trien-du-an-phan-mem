<?php
    $matkhau=$_POST['matkhau'];
    $nhaplai =$_POST['nhaplai'];
    $matk=$_GET['id'];
    require('connect.php');
    $sql = "Select * from taikhoan where matk = '$matk'";
    $row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
    $pass = password_hash($matkhau,PASSWORD_DEFAULT);
    if($matkhau==$nhaplai){
        $sqlmk = "UPDATE taikhoan set matkhau ='$pass' where matk='$matk';";
        mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sqlmk)){
            echo '<script language="javascript">';
            echo 'alert("Đổi mật khẩu thành công");';
            echo 'location.href="login.php";';
            echo '</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Đổi mật khẩu thất bại");';
            echo 'location.href="quenmk.php";';
            echo '</script>';
        };
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("Nhập lại mật khẩu bị sai");';
        echo 'location.href="matkhaumoi.php?id='.$matk.'";';
        echo '</script>';
    }
    mysqli_close($conn);
?>