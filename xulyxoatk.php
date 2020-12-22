<?php
    $taikhoan=$_POST['taikhoan'];
    
    require('connect.php');
    if($taikhoan!=""){
        $sql = "DELETE FROM taikhoan WHERE email='$taikhoan';";
        mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sql)){
            echo '<script language="javascript">';
            echo 'alert("Xóa tài khoản thành công");';
            echo 'location.href="xoataikhoan.php"</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Xóa tài khoản thất bại");';
            echo 'location.href="xoataikhoan.php"</script>';
        };
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("hãy chọn tài khoản xóa");';
        echo 'location.href="xoataikhoan.php"</script>';
    }
    mysqli_close($conn);
?>