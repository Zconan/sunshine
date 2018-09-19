<?php
    
    //引入连接数据库
    require('connect.php');

    //接收前端参数
    $page = isset($_GET['page']) ? $_GET['page'] : null;
    $qty = isset($_GET['qty']) ? $_GET['qty'] : null;
    $sort = isset($_GET['param']) ? $_GET['param'] : null;
    $desc = isset($_GET['desc']) ? true : false;

    //编写sql语句
    $sql = 'select * from list';
    if($sort){
        $sql .= " order by $sort*1";
        if($desc){
            $sql .= " desc";
        }
    }

    //查询结果集
    $result = $conn->query($sql);

    //获取结果集
    $rows = $result->fetch_all(MYSQLI_ASSOC);

    //截取返回前端所需数据
    $res = array(
        'total' => count($rows),
        'pageNum' => $page*1,
        'qty' => $qty*1,
        'data' => array_slice($rows,($page-1)*$qty,$qty)
    );

    //发送数据
    echo json_encode($res,JSON_UNESCAPED_UNICODE);

    //关闭查询结果集，避免资源浪费
    $result->close();

    //关闭数据库，避免资源浪费
    $conn->close();

?>