<?php
    $mathisinh=$_POST['mathisinh'];
    $url = $_POST['url'];
    
    require('connect.php');

    $check = -1;
  
    $sql = "INSERT INTO `anh`(`id`, `mathisinh`, `duongdan`) VALUES (NULL,'$mathisinh','$url')";

    mysqli_set_charset($conn,'UTF8');
    if(mysqli_query($conn,$sql)){
       
        $check = 1;
    }
    echo $check;    
    mysqli_close($conn);
?>
