<?php
    include('./public.php');
    $codes=$_GET['userId'];
    $moneys=$_GET['moneys'];
    $sql="select * from huiyuan where userId='$codes'";
    $res=$connect->query($sql);
    $arr=$res->fetch_array();
    $money_next=$moneys+$arr['sheng_money'];
    $sql="update huiyuan set sheng_money='$money_next' where userId='$codes'";
    $res=$connect->query($sql);
    if($res){
        echo 'ok';
    }
?>