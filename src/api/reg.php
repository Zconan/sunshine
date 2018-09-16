<?php
    //连接数据库
    require('connect.php');

    //接收参数
    $email = isset($_GET['email']) ? $_GET['email'] : null;

    //编写sql语句
    $sql = "select * from user where email='$email'";
    //获取查询结果集
    $result = $conn->query($sql);
    //判断是否存在数据库
    if(($result->num_rows) > 0){
        //说明数据库存在该数据，返回no表示不允许注册
        echo 'no';
    }else{
        echo 'yes';
    }
    
?>