jQuery(function($){

    //获取相关元素
    let $username = $('#username');
    let $password = $('#password');
    let $btn = $('button');

    //点击登录按钮验证用户信息
    $btn.click(()=>{

        //获取输入框的值
        let $_username = $username.val();
        let $_password = $password.val();

        //状态值
        let statusCode = [200,304];

        //创建ajax对象
        let xhr = new XMLHttpRequest();
        //处理服务器返回数据
        xhr.onload = ()=>{
            if(statusCode.indexOf(xhr.status) >= 0){
                let res = xhr.responseText;
                if(res === 'yes'){
                    alert('恭喜您，登录成功！');
                    location.href = '../../index.html';
                }else if(res === 'no'){
                    alert('很遗憾，登录失败！');
                }
            }
        }
        //创建与服务器的连接
        xhr.open('get','../api/login.php?username='+$_username+'&password='+$_password,true);
        //发送请求
        xhr.send();
    });
});