
<!-- gửi email kèm file -->
<?php
    $to = "thangdt72@wru.vn";
    $subject = "Gửi email có đính kèm file";
    $body = "Đây là nội dung email.";

    //Mở file để đọc nội dung
    $file = fopen( "images/featured-thumb1.jpg", "r" );
    if( $file == false )
    {
        echo "Error in opening file";
        exit();
    }
    $size = filesize("images/featured-thumb1.jpg");
    $encoded_content = fread( $file, $size); //Nội dung file
    //Mã hóa nội dung đính kèm - chia nhỏ nội dung thành nhiều dong
    $encoded_content = chunk_split(base64_encode($encoded_content));

    //Tạo ra một chuỗi 32 dùng đề phân vùng mô tả
    $num = md5(uniqid(time()));
    $eol = PHP_EOL;
    //Phần header chính
    $header = "From: duongtienthang123456789@gmail.com\r\n";
$header .= "MIME-Version: 1.0\r\n";
$header .= "Content-Type: multipart/mixed; boundary=\"".$num."\"\r\n";

    //Phần nội dùng Email
    
    $message = "--".$num.$eol;
$message .= "Content-Type: text/html; charset=ISO-8859-1".$eol;
$message .= "Content-Transfer-Encoding: 8bit".$eol.$eol;
$message .= $body.$eol;
$message .= "--".$num.$eol;
$message .= "Content-Type: application/pdf; name=\"featured-thumb1.jpg\"".$eol;
$message .= "Content-Transfer-Encoding: base64".$eol;
$message .= "Content-Disposition: attachment; filename=\"featured-thumb1.jpg\"".$eol;
$message .= $encoded_content.$eol;
$message .= "--".$num."--";
    //Kết thúc các phân đoạn

    //Gửi mail
    $success = mail ($to,$subject,$message,$header);

    if( $success == true )
    {
        echo "Đã gửi mail thành công...";
    }
    else
    {
        echo "Không gửi đi được...";
    }
?>
<!-- gửi email kèm file -->