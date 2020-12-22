<?php
    session_start();
    unset($_SESSION['matk']);
    header("Location:login.php")
?>