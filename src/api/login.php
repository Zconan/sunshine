<?php
    
    //登录验证
    
    //引入连接数据库
    require('connect.php');

    //接收参数
    $username = isset($_GET['username']) ? $_GET['username'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;

    //编写sql语句
    $sql = "select * from user where username='$username' and password='$password'";

    //查询结果集
    $result = $conn->query($sql);

    //判断用户名和密码是否一致
    if(($result->num_rows) > 0){
        //用户名和密码一致返回yes，表示允许登录
        echo 'yes';
    }else{
        //用户名和密码一致返回no，表示不允许登录
        echo 'no';
    }
    
?>