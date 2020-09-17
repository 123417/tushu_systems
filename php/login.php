<?php
     include('./public.php');
     $codes=$_GET['userId'];
     $pass=md5($_GET['pass']);
     $sql="select * from huiyuan where userId='$codes' and user_pass='$pass'";
     $res=$connect->query($sql);
     if($res->num_rows>0){
        echo "ok";
     }
?>