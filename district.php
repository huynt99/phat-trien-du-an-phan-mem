<?php
require('connect.php');

 ?>
 <?php
  $idprovince = $_GET["idprovince"]; settype($idprovince,"int");
  $district  = "select * from district WHERE _province_id = '$idprovince' ";
  mysqli_set_charset($conn, 'UTF8');
  $resultdistrict = mysqli_query($conn, $district);
  while( $row_district= mysqli_fetch_array($resultdistrict,MYSQLI_ASSOC)){
  ?>
 <option value="<?php echo $row_district["id"] ?>"><?php echo $row_district["_name"] ?></option>
 <?php
}
  ?>
