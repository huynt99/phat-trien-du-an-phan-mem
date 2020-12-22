<?php
    $mathisinh=$_GET['mathisinh'];
    
    require('connect.php');

    $check = -1;

    
      $sql = "UPDATE `thongtintlisinh` SET `trangthai`= 1 WHERE mathisinh = '$mathisinh'";

        mysqli_set_charset($conn,'UTF8');
    if(mysqli_query($conn,$sql)){
        
        
    }
    
    header("location:TuyenSinhQuanLyDonChuaDuyet.php");
    mysqli_close($conn);
?>