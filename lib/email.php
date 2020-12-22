<?php
$toEmail = "ngohai1005@gmail.com";
echo  $_POST["userEmail"];
$string = "Câu hỏi được gửi từ bạn ";
$string = $string. " ".
 $_POST["PostUser"]. 
 "\r\n". 
 "Địa chỉ email : ".
 $_POST["PostUserMail"].
 "\r\n".
 "Số điện thoại :". 
 $_POST["PostUserTel"]. 
 "\r\n". 
 "Địa chỉ : ".
 $_POST["PostUserAddress"].
 "\r\n". 
 "Câu hỏi".
 "\r\n". 
 $_POST["PostContent"]
 ;
$mailHeaders = "From: " . $_POST["PostUser"] . "<". $_POST["PostUserMail"] .">\r\n";
if(mail($toEmail, $_POST["PostTitle"], $string, $mailHeaders)) {
print "<p class='success'>Contact Mail Sent.</p>";
} else {
print "<p class='Error'>Problem in Sending Mail.</p>";
}
?>