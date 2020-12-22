<?php
    $maxettuyen=$_POST['maxettuyen'];
    $tennguyenvong = $_POST['tennguyenvong'];
    $matohop=$_POST['matohop'];
    $mathisinh =$_POST['mathisinh'];
    $diem10mon1=$_POST['diem10mon1'];
    $diem10mon2=$_POST['diem10mon2'];
    $diem10mon3 = $_POST['diem10mon3'];
    $diem11mon1 = $_POST['diem11mon1'];
    $diem11mon2 = $_POST['diem11mon2'];
    $diem11mon3 = $_POST['diem11mon3'];
    $diem12mon1 = $_POST['diem12mon1'];
    $diem12mon2 = $_POST['diem12mon2'];
    $diem12mon3 = $_POST['diem12mon3'];
    
    require('connect.php');

    $check = -1;
  
      $sql = "INSERT INTO `nguyenvong`(`manguyenvong`,`tennguyenvong`, `maxettuyen`, `matohop`, `diem10mon1`, `diem10mon2`, `diem10mon3`, `diem11mon1`, `diem11mon2`, `diem11mon3`, `diem12mon1`, `diem12mon2`, `diem12mon3`, `mathisinh`) VALUES (NULL,'$tennguyenvong','$maxettuyen','$matohop','$diem10mon1','$diem10mon2','$diem10mon3','$diem11mon1','$diem11mon2','$diem11mon3','$diem12mon1','$diem12mon2','$diem12mon3','$mathisinh')";

    mysqli_set_charset($conn,'UTF8');
    if(mysqli_query($conn,$sql)){
       
        $check = 1;
    }
    echo $check;    
    mysqli_close($conn);
?>


