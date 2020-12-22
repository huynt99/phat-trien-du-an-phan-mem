
<?php
 include "meRaviQr/qrlib.php";
 require 'PHPMailer-master-2/src/PHPMailer.php';
 require 'PHPMailer-master-2/src/Exception.php';
 require 'PHPMailer-master-2/src/OAuth.php';
 require 'PHPMailer-master-2/src/POP3.php';
 require 'PHPMailer-master-2/src/SMTP.php';
 
 use PHPMailer\PHPMailer\PHPMailer;
 use PHPMailer\PHPMailer\Exception;
  //include "config.php";

 $qc =  $_POST['qrContent'];
 $email = $_POST['email'];
 $qrImgName = "meravi".rand();
 $final = $qc;
 	$qrs = QRcode::png($final,"userQr/$qrImgName.png","H","3","3");
 	$qrimage = $qrImgName.".png";
 	$workDir = $_SERVER['HTTP_HOST'];
 	//$qrlink = $workDir."/BTL_HTTTDL/phattrienduanphanmem1/userQr/".$qrImgName.".png";
 	$link = "userQr/".$qrImgName.".png";

//Create a new PHPMailer instance
 	$mail = new PHPMailer;
//Tell PHPMailer to use SMTP
 	$mail->isSMTP();
//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
 	$mail->SMTPDebug = 2;
//Ask for HTML-friendly debug output
 	$mail->Debugoutput = 'html';
//Set the hostname of the mail server
 	$mail->Host = 'smtp.gmail.com';
// use
// $mail->Host = gethostbyname('smtp.gmail.com');
// if your network does not support SMTP over IPv6
//Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
 	$mail->Port = 587;
//Set the encryption system to use - ssl (deprecated) or tls
 	$mail->SMTPSecure = 'tls';
//Whether to use SMTP authentication
 	$mail->SMTPAuth = true;
//Username to use for SMTP authentication - use full email address for gmail
 	$mail->Username = "duongtienthang123456789@gmail.com";
	 //Password to use for SMTP authentication
		  $mail->Password = "dtt1472583690";
//Set who the message is to be sent from
 	$mail->setFrom($email, 'Dat');
//Set an alternative reply-to address
//Set who the message is to be sent to
 	$mail->addAddress($email, 'Dat');
//Set the subject line
 	$mail->Subject = 'PHPMailer GMail SMTP test';
 	$mail->Body    = 'test';
//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body
 	$mail->addAttachment($link, 'qrcode');
//send the message, check for errors
 	if (!$mail->send()) {

 		echo "Mailer Error: " . $mail->ErrorInfo;
 	} else {
 		
 		echo $email;
 	}

?>