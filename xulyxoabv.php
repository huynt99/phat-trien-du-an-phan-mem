<?php

$mabv=$_GET['post'];
require('connect.php');
$sql = "Select * from baiviet where mabv = '$mabv'";
$image = mysqli_fetch_assoc(mysqli_query($conn, $sql))['anh'];
$xoa=unlink($image);
$sql = "DELETE FROM baiviet WHERE mabv ='$mabv';";
mysqli_set_charset($conn,'UTF8');
if($xoa){
    if(mysqli_query($conn,$sql)){
        echo '<script language="javascript">';
        echo 'alert("Xóa bài viết thành công");';
        echo 'location.href="Post.php"</script>';
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("Xóa bài viết thất bại");';
        echo 'location.href="Post.php"</script>';
    }
}
else {
    echo '<script language="javascript">';
    echo 'alert("Xóa ảnh trên server thất bại");';
    echo 'location.href="Post.php"</script>';
}
mysqli_close($conn);
?>