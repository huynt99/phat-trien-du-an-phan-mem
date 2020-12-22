<?php

    $chitieu=$_POST['chitieu'];
    $diemchuan =$_POST['diemchuan'];
    $dieukien =$_POST['dieukien'];

    $madiem=$_GET['diem'];
    require('connect.php');
    $rowdiem = mysqli_fetch_assoc(mysqli_query($conn, "Select * from diemchuan where madiem = '$madiem'"));
    if($rowdiem['chitieu']==$chitieu&$rowdiem['diem']==$diemchuan&$rowdiem['dieukien']==$dieukien){
        echo '<script language="javascript">';
        echo 'alert("Điểm chuẩn không có sự thay đổi nào");';
        echo 'location.href="qldiemchuan.php";';
        echo '</script>';
        }
    else{
            $sql = "UPDATE diemchuan set  chitieu='$chitieu', diem='$diemchuan',dieukien='$dieukien'where madiem='$madiem';;";
            mysqli_set_charset($conn,'UTF8');
            if(mysqli_query($conn,$sql)){
                echo '<script language="javascript">';
                echo 'alert("Sửa đổi điểm chuẩn thành công");';
                echo 'location.href="qldiemchuan.php";';
                echo '</script>';
            }
            else{
                echo '<script language="javascript">';
                echo 'alert("Sửa đổi điểm chuẩn thất bại");';
                echo 'location.href="qldiemchuan.php&diem='.$madiem.'";';
                echo '</script>';
            };
        }
    mysqli_close($conn);
?>