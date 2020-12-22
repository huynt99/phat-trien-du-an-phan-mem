<?php
    $diem=$_GET['diem'];
    
    require('connect.php');
        $sql = "DELETE FROM diemchuan WHERE madiem='$diem';";
        mysqli_set_charset($conn,'UTF8');
        if(mysqli_query($conn,$sql)){
            echo '<script language="javascript">';
            echo 'alert("Xóa điểm chuẩn thành công");';
            echo 'location.href="qldiemchuan.php"</script>';
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Xóa điểm chuẩn thất bại");';
            echo 'location.href="qldiemchuan.php"</script>';
        };
    mysqli_close($conn);
?>