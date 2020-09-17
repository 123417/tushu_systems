<?php
    include('./public.php');
    $bookName=$_GET['bookName'];
    $bookAuthor=$_GET['bookAuthor'];
    if($bookName==''){
        $sql="select * from books_info where book_author like '%".$bookAuthor."%'";
    }
    if($bookAuthor==''){
        $sql="select * from books_info where book_name like '%".$bookName."%'";
    }
    if($bookName!='' and $bookAuthor!=''){
        $sql="select * from books_info where book_author='$bookAuthor' and book_name='$bookName'";
    }
    $res=$connect->query($sql);
    $list_arr=[];
    while($arr=$res->fetch_array()){
        $arrs=[];
        $arrs['id']=$arr['id'];
        $arrs['book_name']=$arr['book_name'];
        $arrs['book_author']=$arr['book_author'];
        $arrs['book_nums']=$arr['book_nums'];
        $arrs['book_price']=$arr['book_price'];
        array_push($list_arr,$arrs);
    }
    echo json_encode($list_arr);
?>