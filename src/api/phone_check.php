<?php

    //验证手机号是否已注册

    //引入连接数据库
    require('connect.php');

    //接收参数
    $phone = isset($_GET['phone']) ? $_GET['phone'] : null;

    //编写sql语句
    $sql = "select * from user where phone = '$phone'";

    //获取查询结果集
    $result = $conn->query($sql);
    
    //判断手机号是否已注册
    if(($result->num_rows) > 0){
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