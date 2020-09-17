<?php
//数量同步：归还书的数量加到图书库里
//价格同步：超过时间一天按照1.5倍金额收费，多退少补；
//删除借书记录
    date_default_timezone_set("PRC");
    include('./public.php');
    $book_name=$_GET['book_name'];
    $codes=$_GET['userId'];
    $book_author=$_GET['book_author'];
    $borrow_nums=$_GET['borrow_nums'];
    $id=$_GET['id'];
    //数量同步
    $sql="select * from books_info where book_name='$book_name' and book_author='$book_author'";
    $res=$connect->query($sql);
    $arr=$res->fetch_array();
    $book_nums=$arr['book_nums']+$borrow_nums;
    $sql="update books_info set book_nums='$book_nums' where book_name='$book_name' and book_author='$book_author'";
    $res=$connect->query($sql);
    // if($res){
    //     echo 'ok';
    // }
    //价格同步
    $shijianchuo=strtotime(date('Y-m-d H:i'));//现在的时间戳
    $sql="select * from borrow_book where book_name='$book_name' and id='$id'";
    $res=$connect->query($sql);
    $arr=$res->fetch_array();
    $pretimes=$arr['shijianchuo'];//借书的时间戳
    $borrow_times=$arr['borrow_time'];//借书时长
    $book_price=$arr['book_price'];//借此书一天的租金
    $nums=$arr['borrow_nums'];
    $chatimes=ceil(($shijianchuo-$pretimes)/86400)-$borrow_times;
    if($chatimes>0){
        //超时,扣掉超时的借书费用
        $chaoshimoney=$chatimes*$book_price*1.5*$nums;//超时费用
        $sql="select * from huiyuan where userId='$codes'";
        $res=$connect->query($sql);
        $arr=$res->fetch_array();
        $sheng_money=$arr['sheng_money']-$chaoshimoney;
        $sql="update huiyuan set sheng_money='$sheng_money' where userId='$codes'";
        $connect->query($sql);
    }else{
        //早还书
        $bu_money=-$chatimes*$book_price*$nums;//退还的金额
        $sql="select * from huiyuan where userId='$codes'";
        $res=$connect->query($sql);
        $arr=$res->fetch_array();
        $sheng_money=$arr['sheng_money']+$bu_money;
        $sql="update huiyuan set sheng_money='$sheng_money' where userId='$codes'";
        $res=$connect->query($sql);
    }
    //删除借书记录
    $sql="delete from borrow_book where book_name='$book_name' and id='$id'";
    $res=$connect->query($sql);
    if($res){
        echo "ok";
    }
?>