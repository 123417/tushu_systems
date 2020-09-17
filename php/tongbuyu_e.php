<?php
    include('./public.php');
    $moneys=$_GET['money'];
    $codes=$_GET['userId'];
    $sql="select * from huiyuan where userId='$codes'";
    $res=$connect->query($sql);
    $arr=$res->fetch_array();
    if($arr['sheng_money']>$moneys){
        $sheng_money=$arr['sheng_money']-$moneys;
        $sql="update huiyuan set sheng_money='$sheng_money' where userId='$codes'";
        $res=$connect->query($sql);
        if($res){
            echo "ok";
        }
    }else{
        echo 'no';
    }
?>