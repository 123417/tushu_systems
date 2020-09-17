<?php
    date_default_timezone_set("PRC");
    include('./public.php');
    $user_name=$_GET['user_name'];
    $codes=$_GET['userId'];
    $book_author=$_GET['book_author'];
    $book_name=$_GET['book_name'];
    $borrow_nums=$_GET['borrow_nums'];
    $book_price=$_GET['book_price'];
    $borrow_time=$_GET['borrow_time'];
    $totalPrice=$book_price*$borrow_time*$borrow_nums;
    // echo $totalPrice;
    $nowTime=date('Y-m-d H:i');
    $shijianchuo=strtotime(date('Y-m-d H:i'));
    $sql="insert into borrow_book(user_name,userId,book_name,book_author,borrow_nums,book_price,borrow_time,borow_total_price,start_time,shijianchuo) values('$user_name','$codes','$book_name','$book_author','$borrow_nums','$book_price','$borrow_time','$totalPrice','$nowTime','$shijianchuo')";
    $res=$connect->query($sql);
    if($res){
        //同步图书表中的数量
        $sql1="select * from books_info where book_author='$book_author' and book_name='$book_name'";
        $res1=$connect->query($sql1);
        $arr1=$res1->fetch_array();
        $nums=$arr1['book_nums']-$borrow_nums;
        $sql2="update books_info set book_nums='$nums' where book_author='$book_author' and book_name='$book_name'";
        $res2=$connect->query($sql2);
        if($res2){
            echo $totalPrice;
        }
    }
    
?>