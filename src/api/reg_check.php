<?php
    //验证用户名是否已注册

    //引入连接数据库
    require('connect.php');

    //接收参数
    $username = isset($_GET['username']) ? $_GET['username'] : null;

    //编写sql语句
    $sql = "select * from user where username='$username'";
    
    //获取查询结果集
    $result = $conn->query($sql);
    //查询用户名是否存在
    if(($result->num_rows)>0){
        //存在返回no，表示不允许注册
        echo 'no';
    }else{
        //不存在返回yes，表示允许注册
        echo 'yes';
    }
?>