<?php
    $mathisinh=$_GET['mathisinh'];
    $check = $_GET['check'];
    
    require('connect.php');

   
    
      $sql = "UPDATE `thongtintlisinh` SET `trangthai`= 3 WHERE mathisinh = '$mathisinh'";

        mysqli_set_charset($conn,'UTF8');
    if(mysqli_query($conn,$sql)){
        
        
    }
    
    if($check == 0){
    	 header("location:TuyenSinhQuanLyDonChuaDuyet.php");
    	}else {
    		 header("location:TuyenSinhQuanLyDonDaDuyet.php");
    	}
   
    mysqli_close($conn);
?>