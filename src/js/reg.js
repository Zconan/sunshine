document.addEventListener('DOMContentLoaded',()=>{
    (function(){
        //获取相关元素
        let username = document.querySelector('#username');

        //存储状态
        let statusCode = [200,304];

        //检测用户名是否存在
        username.onblur = ()=>{
            //获取输入框的值
            let _username = username.value;
            //获取span标签
            let span = username.nextElementSibling;
            //正则判断用户名是否规范
            let reg = /^[a-zA-Z0-9\u4E00-\u9FA5][a-zA-Z0-9\u4E00-\u9FA5]{2,6}$/;
            if(!reg.test(_username)){
                span.innerText = '请输入3-7位仅由字母、数字或中文组成的用户名';
            }else if(reg.test(_username)){
                span.style.display = 'none';
                //创建ajax对象
                let xhr = new XMLHttpRequest();
                //处理服务器返回数据
                xhr.onreadystatechange = function(){
                    if(xhr.readyState === 400 && statusCode.indexOf(xhr.status) >= 0){
                       let res = xhr.responseText;
                       console.log(res); 
                    }
                }
                //设置请求参数，建立与服务器的连接
                xhr.open('get','../api/check_reg.php?username='+_username,true);
                //向服务器发送请求
                xhr.send();
            }
        }       
    })();
});