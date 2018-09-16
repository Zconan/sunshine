<?php
    //连接数据库

    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sunshine';

    //创建连接
    $conn = new mysqli($servername,$username,$password,$dbname);
    //检测连接
    if($conn->connect_error){
        die('连接失败：'.$conn->connect_error);
    }
    //查询前设置编码格式，避免输出错误
    $conn->set_charset('utf8');

?>