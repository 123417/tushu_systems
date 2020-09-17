<?php
    include('./public.php');
    $codes=$_GET['userId'];
    $sql="delete from huiyuan where userId='$codes'";
    $res=$connect->query($sql);
    $sql="delete from borrow_book where userId='$codes'";
    $res=$connect->query($sql);
    if($res){
        echo "ok";
    }
?>