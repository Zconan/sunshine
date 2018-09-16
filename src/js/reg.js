document.addEventListener('DOMContentLoaded',()=>{
    (function(){
        //获取相关元素
        let middle = document.querySelector('.middle');
        //获取div下的span标签
        let span = document.querySelectorAll('.middle div span');
        //响应状态
        let statusCode = [200,304];
        //创建ajax对象
        let xhr = new XMLHttpRequest();
        //处理服务器返回数据
        xhr.onload = ()=>{
            if(statusCode.indexOf(xhr.status) >= 0){
                let res = xhr.responseText;
                if(res === 'yes'){
                    span[1].innerText = 'success';
                }
            }
        }

        //事件委托绑定事件
        middle.oninput = e=>{
            //获取父级
            let parent = e.target.parentNode;

            //邮箱
            if(parent.className === 'email'){
                //获取邮箱值
                let _email = e.target.value;
                //邮箱格式验证
                let reg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
                test(reg,_email,span[1]);
                if(reg.test(_email)){
                    //建立与服务器的连接
                    xhr.open('get','../api/reg.php?email='+_email,true);
                    //发送请求
                    xhr.send();
                }
            }
        }

        //检测格式
        function test(reg,val,ele){
            if(!reg.test(val)){
                ele.innerText = '格式不正确';
                ele.style.color = '#F10215';
            }
        }
    })();
});