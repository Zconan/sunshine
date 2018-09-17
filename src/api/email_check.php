<?php

    //验证邮箱是否已注册

    //引入连接数据库
    require('connect.php');

    //接收参数
    $email = isset($_GET['email']) ? $_GET['email'] : null;

    //编写sql语句
    $sql = "select * from user where email='$email'";
    
    //获取查询结果集
    $result = $conn->query($sql);

    //判断邮箱是否已注册
    if(($result->num_rows)>0){
        //存在返回no，表示不允许注册
        echo 'no';
    }else{
        //不存在返回yes，表示允许注册
        echo 'yes';
    }

    //关闭查询结果集和数据库，避免资源浪费
    $result->close();
    $conn->close();
    
?>