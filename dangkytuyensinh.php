<?php
    $hoten=$_POST['hoten'];
    $gioitinh=$_POST['gioitinh'];
    $ngaysinh =$_POST['ngaysinh'];
    $tinh=$_POST['tinh'];
    $dantoc=$_POST['dantoc'];
    $chungminhthu = $_POST['chungminhthu'];
    $noicap = $_POST['noicap'];
    $ngaycap = $_POST['ngaycap'];
    $idhuyen = $_POST['idhuyen'];
    $idtruong10 = $_POST['idtruong10'];
    $idtruong11 = $_POST['idtruong11'];
    $idtruong12 = $_POST['idtruong12'];
    $email = $_POST['email'];
    $diachi = $_POST['diachi'];
    $xaphuong = $_POST['xaphuong'];
    $thonban = $_POST['thonban'];
    $dienthoai = $_POST['dienthoai'];
    $namtotnghiep = $_POST['namtotnghiep'];
    $khuvucuutien = $_POST['khuvucuutien'];
    $doituonguutien = $_POST['doituonguutien'];
    require('connect.php');

    $check = -1;
   // $chungminh = "Select * from taikhoan where chungminhthu='$chungminhthu' ";
  //  $result = mysqli_query($conn,$chungminh);
   // $row = mysqli_fetch_assoc($result);
    
      $sql = "INSERT INTO `thongtintlisinh`(`mathisinh`, `hoten`, `gioitinh`, `ngaysinh`, `idtinh`, `dantoc`, `ngaycap`, `chungminhthu`, `noicap`, `Idhuyen`, `idtruong10`, `idtruong11`, `idtruong12`, `email`, `diachi`, `xaphuong`, `dienthoai`, `namtotnghiep`, `khuvucuutien`, `doituonguutien`,`thonban`) VALUES (NULL,'$hoten','$gioitinh','$ngaysinh','$tinh','$dantoc','$ngaycap','$chungminhthu','$noicap','$idhuyen','$idtruong10','$idtruong11','$idtruong12','$email','$diachi','$xaphuong','$dienthoai','$namtotnghiep','$khuvucuutien','$doituonguutien','$thonban')";

        mysqli_set_charset($conn,'UTF8');
    if(mysqli_query($conn,$sql)){
        $sqlmathisinh = "SELECT mathisinh FROM thongtintlisinh order by mathisinh DESC";
        if(mysqli_query($conn,$sqlmathisinh)){
           
             $row =mysqli_fetch_array(mysqli_query($conn,$sqlmathisinh),MYSQLI_ASSOC);
             $check = $row['mathisinh'];
        }
       
        
    }
    echo $check;
    // if(empty($row['chungminhthu'])){
      
    // }
    // else{
    //     echo '<script language="javascript">';
    //     echo 'alert("Email đã có tài khoản. Không thể tạo");';
    //     echo 'location.href="Register.php?id='.$matk.'";';
    //     echo '</script>';
    // }
    mysqli_close($conn);
?>


