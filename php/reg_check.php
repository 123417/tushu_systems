<?php
    include('./public.php');
    $codes=$_GET['userId'];
    $sql="select * from huiyuan where userId='$codes'";
    $res=$connect->query($sql);
    if($res->num_rows<=0){
        echo 'ok';
    }
?>