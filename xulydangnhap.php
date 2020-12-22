<?php
    session_start();
    $matkhau =$_POST['matkhau'];
    $email =$_POST['email'];
    require('connect.php');
    $sql = "Select * from taikhoan where email = '$email'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) == 1 ) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($matkhau,$row['matkhau'])) {
            if($row['trangthai']=='1'){
                $_SESSION['matk']=$row['matk'];
                $_SESSION['quyen']=$row['maquyen'];
                echo '<script language="javascript">';
                echo 'location.href="admin.php";';
                echo '</script>';
            }
            else{
                $_SESSION['matk']=$row['matk'];
                $_SESSION['quyen']=$row['maquyen'];
                echo '<script language="javascript">';
                echo 'location.href="kichhoat.php";';
                echo '</script>';
            }
        }
        else {           
            echo '<script language="javascript">';
            echo 'alert("Sai mật khẩu");';
            echo 'location.href="login.php";';
            echo '</script>';
        }
    }
    else {
        echo '<script language="javascript">';
        echo 'alert("Sai Email");';
        echo 'location.href="login.php";';
        echo '</script>';
    }
    mysqli_close($conn);

?>