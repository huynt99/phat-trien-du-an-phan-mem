<?php

    $taikhoan=$_POST['taikhoan'];
    $quyen =$_POST['quyen'];
    
    require('connect.php');
    Switch($quyen){
        case 'admin':
            $maquyen='3';
            break;
        case 'manager':
            $maquyen='2';
            break;
            
        default:
            $maquyen='';
            break;
    }
    if($maquyen!=""&$taikhoan!=""){
        $sql = "UPDATE taikhoan set maquyen ='$maquyen' where email='$taikhoan';";
        mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sql)){
            echo '<script language="javascript">';
            echo 'alert("Cấp quyền thành công");';
            echo 'location.href="capquyen.php";';
            echo '</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Cấp quyền thất bại");';
            echo 'location.href="capquyen.php";';
            echo '</script>';
        };
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("hãy chọn tài khoản và quyền được cấp");';
        echo 'location.href="capquyen.php";';
        echo '</script>';
    }
    mysqli_close($conn);
?>