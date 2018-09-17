<?php
    
    //引入连接服务器
    require('connect.php');
    
    //接收参数
    $username = isset($_GET['username']) ? $_GET['username'] : null;
    $email = isset($_GET['email']) ? $_GET['email'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;
    $phone = isset($_GET['phone']) ? $_GET['phone'] : null;

    //编写sql语句
    $sql = "insert into user (username,email,password,phone) values ('$username','$email','$password','$phone')";

    //判断是否插入数据库并返回给前端参数
    if($conn->query($sql)){
        echo 'yes';
    }else{
        echo 'no';
    }

    //关闭数据库，避免资源浪费
    $conn->close();

?>