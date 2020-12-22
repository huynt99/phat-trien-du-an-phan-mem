<?php
session_start();
if($_POST['noidung']!=""){
    $chude=$_POST['chude'];
    $tieude =$_POST['tieude'];
    $noidung =$_POST['noidung'];
    $tomtat=$_POST['tomtat'];
    $matk=$_SESSION['matk'];
    require('connect.php');
    $error =array();
    $target_dir="images/images_post/";
    $target_file=$target_dir.basename($_FILES['image']['name']);
    if($_FILES['image']['size']>3145728){
        $error['image']="Chỉ được upload file dưới 3MB";
    }
    $file_type = pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);
    $file_type_allow= array('png','jpg','jpeg','gif');
    if(!in_array(strtolower($file_type),$file_type_allow)){
        $error['image']="Chỉ được upload file ảnh dưới dạng gif, jpg, jpeg, png";
    }
    if(file_exists($target_file)){
        $error['image']="File đã tồn tài trên hệ thống";
    }
    if(empty($error)){
        $sql = "INSERT INTO baiviet(chude,tieude,anh,noidung,ngaytao,matk,tomtat) 
        values ('$chude','$tieude','$target_file','$noidung',NOW(),'$matk','$tomtat');";
        mysqli_set_charset($conn,'UTF8');
        if(move_uploaded_file($_FILES['image']['tmp_name'],$target_file)){
            if(mysqli_query($conn,$sql)){
                echo '<script language="javascript">';
                echo 'alert("Tạo bài viết thành công");';
                echo 'location.href="thembaiviet.php";';
                echo '</script>';
            }
            else{
                echo '<script language="javascript">';
                echo 'alert("Tạo bài viết thất bại");';
                echo 'location.href="thembaiviet.php";';
                echo '</script>';
            };
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("Up ảnh thất bại");';
            echo 'location.href="thembaiviet.php";';
            echo '</script>';
        }
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("'.$error['image'].'");';
        echo 'location.href="thembaiviet.php";';
        echo '</script>';
    }
    mysqli_close($conn);
}else{
        echo '<script language="javascript">';
        echo 'alert("Hãy nhập nội dung cho bài viết");';
        echo 'location.href="thembaiviet.php";';
        echo '</script>';
    }
?>