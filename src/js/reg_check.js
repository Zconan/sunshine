document.addEventListener('DOMContentLoaded',()=>{
    
    (function(){
        //获取相关元素
        let username = document.querySelector('#username');

        //存储状态
        let statusCode = [200,304];

        username.oninput = ()=>{
            //获取输入框的值
            let _username = username.value;
            //获取span标签
            let span = username.nextElementSibling;
            //正则判断用户名是否规范
            let reg = /^[a-zA-Z0-9\u4E00-\u9FA5][a-zA-Z0-9\u4E00-\u9FA5]{2,6}$/;
            if(!reg.test(_username)){
                //用户名不规范时输出提示信息并阻止提交
                span.innerText = '请输入3-7位仅由字母、数字或中文组成的用户名';
                span.style.color = '#F10215';
                return false;
            }else if(reg.test(_username)){
                //检测用户名是否存在
                //创建ajax对象
                let xhr = new XMLHttpRequest();
                //处理服务器返回数据
                xhr.onreadystatechange = function(){
                    if(xhr.readyState === 4 && statusCode.indexOf(xhr.status) >= 0){
                        let res = xhr.responseText;
                        if(res === 'no'){
                            span.innerText = '用户名已存在';
                            span.style.color = '#F10215';
                            return false;
                        }else if(res === 'yes'){
                            //用户名符合要求时显示正确提示
                            span.innerText = '允许注册';
                            span.style.color = '#58bc58';
                        }
                    }
                }
                //设置请求参数，建立与服务器的连接
                xhr.open('get','../api/reg_check.php?username='+_username,true);
                //向服务器发送请求
                xhr.send();
            }
        }       
    })();
});