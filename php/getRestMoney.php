<?php
    include('./public.php');
    $codes=$_GET['userId'];
    $sql="select * from huiyuan where userId='$codes'";
    $res=$connect->query($sql);
    $arr=$res->fetch_array();
    echo $arr['sheng_money'];
?>