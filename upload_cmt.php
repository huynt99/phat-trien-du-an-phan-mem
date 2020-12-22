<?php
//PHP part
$file_names = $_FILES["file"]["name"];
for ($i = 0; $i < count($file_names); $i++) {
   $file_name=$file_names[$i];
   $tmp           = explode('.', $file_name);
   $extension = end($tmp);
   $original_file_name = pathinfo($file_name, PATHINFO_FILENAME);
   $file_url = $original_file_name . "-" . date("YmdHis") . "." . $extension;
   move_uploaded_file($_FILES["file"]["tmp_name"][$i], 'Hinhanh_cmt/' . $file_name);
  
}

?>