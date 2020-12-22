<?php
    $manganh=$_POST['nganh'];
    $chitieu =$_POST['chitieu'];
    $nam =$_POST['nam'];
    $diemchuan =$_POST['diemchuan'];
    $dieukien =$_POST['dieukien'];
    
    require('connect.php');
    $result = mysqli_query($conn,"Select * from diemchuan where manganh='$manganh' and nam='$nam'");
    $sql = "INSERT INTO diemchuan(diem,dieukien,chitieu,nam,manganh) 
    values ('$diemchuan','$dieukien','$chitieu','$nam','$manganh');";
    mysqli_set_charset($conn,'UTF8');
    if(mysqli_num_rows($result) == 0 ){
        if(mysqli_query($conn,$sql)){
            echo '<script language="javascript">';
            echo 'alert("Thêm điểm chuẩn thành công");';
            echo 'location.href="themdiem.php";';
            echo '</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Thêm điểm chuẩn thất bại");';
            echo 'location.href="themdiem.php";';
            echo '</script>';
        }
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("Điểm chuẩn của mã ngành '.$manganh.' trong năm '.$nam.' đã tồn tại");';
        echo 'location.href="themdiem.php";';
        echo '</script>';
    }
    mysqli_close($conn);
?>


