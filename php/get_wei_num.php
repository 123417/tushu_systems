<?php
    include('./public.php');
    $codes=$_GET['userId'];
    $sql="select * from borrow_book where userId='$codes'";
    $res=$connect->query($sql);
    $num=$res->num_rows;
    $nums=floor($num/5);
    echo $nums;
?>