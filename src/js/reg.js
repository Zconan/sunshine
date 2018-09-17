document.addEventListener('DOMContentLoaded',()=>{

    //验证功能
    (function(){

        //获取相关元素
        let middle = document.querySelector('.middle');
        //响应状态
        let statusCode = [200,304];
        //创建ajax对象
        let xhr = new XMLHttpRequest();

        //事件委托绑定事件
        middle.oninput = e=>{
            //获取父级
            let parent = e.target.parentNode;
            //获取span标签
            let span = parent.children[2];

            //用户名格式验证及存在验证
            if(parent.className === 'username'){
                //获取输入框值
                let _username = e.target.value;
                //格式验证
                let reg = /^[a-zA-Z0-9\u4E00-\u9FA5][a-zA-Z0-9\u4E00-\u9FA5]{2,6}$/;
                if(!reg.test(_username)){
                    //格式不正确时输出错误提示
                    span.innerText = '请输入3-7位仅由字母、数字或中文组成的用户名';
                    span.style.color = '#F10215';
                    return false;
                }else if(reg.test(_username)){
                    //格式正确时验证用户是否存在
                    request(span);
                    //建立与服务器的连接
                    xhr.open('get','../api/username_check.php?username='+_username,true);
                    //发送请求
                    xhr.send();
                }
            }
            
            //邮箱格式验证及存在验证
            if(parent.className === 'email'){
                let _email = e.target.value;
                let reg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
                txt(reg,_email,span);
                if(reg.test(_email)){
                    request(span);
                    xhr.open('get','../api/email_check.php?email='+_email,true);
                    xhr.send();
                }
            }

            //手机格式验证及存在验证
            if(parent.className === 'phone'){
                let _phone = e.target.value;
                let reg = /^1[34578]\d{9}$/;
                txt(reg,_phone,span);
                if(reg.test(_phone)){
                    request(span);
                    xhr.open('get','../api/phone_check.php?phone='+_phone,true);
                    xhr.send();
                }
            }

            //密码格式验证
            if(parent.className === 'password'){
                let _password = e.target.value;
                let reg = /^[0-9a-zA-Z][0-9a-zA-Z]{5,14}$/;
                if(!reg.test(_password)){
                    span.innerText = '请输入6-15位仅由字母、数字组成的密码';
                    span.style.color = '#F10215';
                    return false;
                }else if(reg.test(_password)){
                    span.innerText = '允许注册';
                    span.style.color = '#58bc58';
                }
            }

            //确认密码验证
            if(parent.className === 'confirm'){
                let _password = parent.previousElementSibling.children[1].value;
                let _confirm = e.target.value;
                if(_confirm != _password){
                    span.innerText = '两次密码不一致';
                    span.style.color = '#F10215';
                    return false;
                }else if(_confirm === _password){
                    span.innerText = '允许注册';
                    span.style.color = '#58bc58';
                }
            }

        }

        //检测格式
        function txt(reg,val,ele){
            if(!reg.test(val)){
                ele.innerText = '格式不正确';
                ele.style.color = '#F10215';
                return false;
            }
        }

        //处理服务器返回数据
        function request(ele){
            xhr.onload = ()=>{
                if(statusCode.indexOf(xhr.status) >= 0){
                    let res = xhr.responseText;
                    if(res === 'yes'){
                        ele.innerText = '允许注册';
                        ele.style.color = '#58bc58';
                    }else if(res === 'no'){
                        ele.innerText = '该用户已被注册';
                        ele.style.color = '#F10215';
                        return false;
                    }
                }
            }
        }

    })();

    //获取验证码功能
    (function(){

        //获取相关元素
        let btn = document.querySelector('.code button');//获取验证码按钮
        let span = btn.previousElementSibling;//显示验证码框

        //页面刷新生成验证码
        code(span);

        //点击生成验证码
        btn.onclick = ()=>{
            code(span);
        }

        //封装函数生成验证码
        function code(ele){
            let code = '0123456789abcdefghijklmnopqrstuvwxyz';
            //声明一个变量用于存储验证码
            let res = '';
            for(let i=0;i<4;i++){
                //获取随机索引值
                let idx = parseInt(Math.random()*27);
                res += code[idx];
            }
            ele.innerText = res;
        }

    })();

    //注册功能并将信息存入数据库
    (function(){

        //获取相关元素
        let regBtn = document.querySelector('.btn');//注册按钮
        let username = document.querySelector('#username');//用户名输入框
        let email = document.querySelector('#email');//邮箱输入框
        let password = document.querySelector('#password');//密码输入框
        let confirm = document.querySelector('#confirm');//确认密码输入框
        let phone = document.querySelector('#phone');//手机号码输入框
        let num = document.querySelector('.num');//显示验证码框
        let code = document.querySelector('#code');//验证码输入框
        let check = document.querySelector('.middle p input');//checkbox按钮

        //状态值
        let statusCode = [200,304];

        regBtn.onclick = ()=>{

            //获取输入框的值
            let _username = username.value;
            let _email = email.value;
            let _password = password.value;
            let _confirm = confirm.value;
            let _phone = phone.value;

            //没点击接受用户协议
            if(!check.checked){
                alert('请接受用户协议');
            }

            //获取验证码框和验证码输入框的值
            let _num = num.innerText;
            let _code = code.value;
            //验证码验证
            if(_code !== _num){
                alert('验证码不正确');
                return false;
            }

            //非空验证
            if(_username === '' || _email === '' || _password === '' || _phone === '' || _code === '' || _confirm === ''){
                alert('输入框不能为空');
                return false;
            }

            //存入数据库
            if(check.checked && _code === _num && _username !== '' && _email !== '' && _password !== '' && _phone !== '' && _code !== '' && _confirm !== ''){
                //创建ajax对象
                let xhr = new XMLHttpRequest();
                //处理服务器返回数据
                xhr.onload = ()=>{
                    if(statusCode.indexOf(xhr.status) >= 0){
                        let res = xhr.responseText;
                        if(res === 'yes'){
                            alert('恭喜您，注册成功！');
                            location.href = '../html/login.html';
                        }else if(res === 'no'){
                            alert('很遗憾，注册失败！');
                        }
                    }
                }
                //创建与服务器的连接
                xhr.open('get','../api/reg.php?username='+_username+'&email='+_email+'&password='+_password+'&phone='+_phone,true);
                //发送请求
                xhr.send();
            }
        }

    })();

});