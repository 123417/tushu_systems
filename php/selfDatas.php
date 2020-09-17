<?php
    include('./public.php');
    //分页
    $nums=$_GET['num'];
    $page_size=5;//每页个数
    $page=$nums*$page_size;//默认首页


    $codes=$_GET['userId'];
    $sql="select * from borrow_book where userId='$codes' limit $page,$page_size";
    // $sql="select * from borrow_book where userId='$codes'";
    $res=$connect->query($sql);
    $list_arr=[];
    while($arr=$res->fetch_array()){
        $arrs=[];
        $arrs['pages']=$page;
        $arrs['id']=$arr['id'];
        $arrs['book_name']=$arr['book_name'];
        $arrs['book_author']=$arr['book_author'];
        $arrs['borrow_nums']=$arr['borrow_nums'];
        $arrs['book_price']=$arr['book_price'];
        $arrs['borrow_time']=$arr['borrow_time'];
        $arrs['borow_total_price']=$arr['borow_total_price'];
        $arrs['start_time']=$arr['start_time'];
        array_push($list_arr,$arrs);
    }
    echo json_encode($list_arr);
?>