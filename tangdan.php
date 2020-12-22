<?php
    $maxettuyen = $_POST['maxettuyen'];
    $chitieu =$_POST['chitieu'];
    
    require('connect.php');

    
    
     $sql = "SELECT thongtintlisinh.mathisinh,thongtintlisinh.hoten,thongtintlisinh.ngaysinh,thongtintlisinh.chungminhthu,province._name,thongtintlisinh.gioitinh FROM `thongtintlisinh`,`province`,`nguyenvong` WHERE thongtintlisinh.idtinh = province.id AND thongtintlisinh.mathisinh = nguyenvong.mathisinh AND nguyenvong.tennguyenvong = 'Nguyện vọng 1' AND nguyenvong.maxettuyen = '$maxettuyen' AND thongtintlisinh.trangthai = 1 order by asc LIMIT '$chitieu'";

     mysqli_set_charset($conn,'UTF8');
     $check = -1;
    if(mysqli_query($conn,$sql)){
        $check = 1;
        
    }
    
    echo $check;
    mysqli_close($conn);
?>