<?php
require('connect.php');

 ?>
 <?php
  $iddistrict = $_GET["iddistrict"]; settype($iddistrict,"int");
  $truong  = "select * from truong WHERE idhuyen = '$iddistrict' ";
  mysqli_set_charset($conn, 'UTF8');
  $resulttruong = mysqli_query($conn, $truong);
  while( $row_truong= mysqli_fetch_array($resulttruong,MYSQLI_ASSOC)){
  ?>
 <option value="<?php echo $row_truong["id"] ?>"><?php echo $row_truong["tentruong"] ?></option>
 <?php
}
  ?>
