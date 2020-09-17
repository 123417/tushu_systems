<?php
     include('./public.php');
     $user=$_GET['user'];
     $pass=md5($_GET['pass']);
     $codes=$_GET['userId'];
     $money=$_GET['money'];
     $sql="insert into huiyuan(user_name,userId,user_pass,reg_money,sheng_money) values('$user','$codes','$pass','$money','$money')";
     $res=$connect->query($sql);
     if($res){
        echo 'ok';
     }
?>