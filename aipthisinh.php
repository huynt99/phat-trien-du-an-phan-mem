<?php

require('connect.php');

//$mathisinh = $_POST['mathisinh'];
$row = "SELECT thongtintlisinh.hoten as 'hoten',thongtintlisinh.ngaysinh as 'ngaysinh' ,thongtintlisinh.chungminhthu as 'chungminhthu',province._name as 'noisinh',thongtintlisinh.gioitinh as 'gioitinh', nganh.tennganh as 'tennganh', cosodaotao.tencoso as 'tencoso' FROM `thongtintlisinh`,`province`,`nguyenvong`,`nganh`,`cosodaotao` WHERE thongtintlisinh.idtinh = province.id AND thongtintlisinh.trangthai = 2 AND nguyenvong.mathisinh = thongtintlisinh.mathisinh AND nguyenvong.maxettuyen = nganh.manganh AND cosodaotao.macoso = nganh.macoso AND thongtintlisinh.mathisinh = '1'";
mysqli_query($conn, "SET NAMES 'UTF8'");
$result = mysqli_query($conn, $row);


class ThiSinh{
	function ThiSinh($hoten,$ngaysinh,$chungminhthu,$noisinh,$gioitinh,$tennganh,$tencoso){
		$this->Hoten = $hoten;
		$this->Ngaysinh = $ngaysinh;
		$this->Chungminhthu = $chungminhthu;
		$this->Noisinh = $noisinh;
		$this->Gioitinh = $gioitinh;
		$this->Tennganh = $tennganh;
		$this->tencoso = $tencoso;
	}

}

$mang = array();

while ($row = mysqli_fetch_assoc($result)){
	array_push($mang, new ThiSinh($row['hoten'],$row['ngaysinh'],$row['chungminhthu'],$row['noisinh'],$row['gioitinh'],$row['tennganh'],$row['tencoso']));
}

echo json_encode($mang);
?>