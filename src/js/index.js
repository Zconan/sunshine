document.addEventListener('DOMContentLoaded',()=>{

    //与后端交互动态生成商品列表
    (function(){
        
        //获取相关元素
        let goodslist = document.querySelector('.goodslist');
        //创建ajax对象
        let xhr = new XMLHttpRequest();
        //状态值
        let statusCode = [200,304];
        //处理服务器返回数据
        xhr.onload = ()=>{
            if(statusCode.indexOf(xhr.status) >= 0){
                let res = JSON.parse(xhr.responseText);
                //创建ul
                let ul = document.createElement('ul');
                ul.innerHTML = res.map(item=>{
                    return `<li data-guid="${item.id}">
                                <img src="${item.imgurl}" />
                                <h4>${item.title}</h4>
                                <p class="price">￥ ${item.price}</p>
                            </li>`;
                }).join('');
                goodslist.innerHTML = '';
                goodslist.appendChild(ul);
            }
        }
        //连接服务器
        xhr.open('get','src/api/index.php',true);
        //发送请求
        xhr.send();     
        
    })();

    //轮播图
    // (function(){
    //     //获取相关元素
    //     let banner = document.querySelector('.banner .middle .top');
    //     let ul = banner.children[0];

    //     //复制第一张图片到ul最后
    //     let cloneImg = ul.children[0].cloneNode(true);
    //     ul.appendChild(cloneImg);

    //     //获取图片张数
    //     let imgNum = ul.children.length;
    //     //获取图片宽度
    //     let imgWidth = ul.children[0].offsetWidth;
             
    //     //设置ul宽度
    //     ul.style.width = imgNum*imgWidth + 'px';

    //     //每三秒执行一次动画
    //     let timer = setInterval(autoPlay,3000);
    //     //鼠标放上图片停止动画
    //     banner.onmouseover = ()=>{
    //         clearInterval(timer);
    //     }
    //     //鼠标离开图片执行动画
    //     banner.onmouseout = ()=>{
    //         timer = setInterval(autoPlay,3000);
    //     }

    //     //生成下标
    //     let div = document.createElement('div');
    //     for(let i=0;i<imgNum-1;i++){
    //         let span = document.createElement('span');
    //         div.appendChild(span);
    //         banner.appendChild(div);           
    //     }

    //     let idx = 0;
    //     function autoPlay(){
    //         idx++;
    //         if(idx > imgNum-1){
    //             ul.style.left = 0;
    //             idx = 1;
    //         }
    //         animate(ul,{left:-imgWidth*idx});
    //     }
    // })();

    //轮播图
    (function(){
        let banner = document.querySelector('.banner .middle .top');
        let ul = banner.children[0];

        //复制第一张图片到ul最后
        let cloneImg = ul.children[0].cloneNode(true);
        ul.appendChild(cloneImg);

        //获取图片张数
        let imgNum = ul.children.length;
        //获取图片宽度
        let imgWidth = ul.children[0].offsetWidth;

        //设置ul宽度
        ul.style.width = imgNum*imgWidth + 'px';

        //默认索引值
        let index = 0;

        //添加分页效果
        let div = document.createElement('div');
        for(let i=0;i<imgNum-1;i++){
            let span = document.createElement('span');
            span.innerText = i+1;
            if(i === index){
                span.className = 'active';
            }
            div.appendChild(span);
        }
        //写入页面
        banner.appendChild(div);

        // 添加左右按钮
        let btnPrev = document.createElement('span');
        btnPrev.className = 'btn-prev';
        btnPrev.innerHTML = '<';
        let btnNext = document.createElement('span');
        btnNext.className = 'btn-next';
        btnNext.innerHTML = '>';
        banner.appendChild(btnPrev);
        banner.appendChild(btnNext);

        //每隔3s显示一张图片
        let timer = setInterval(autoPlay,3000);

        //鼠标移入移出
        banner.onmouseenter = function(){
            clearInterval(timer);
        }
        banner.onmouseleave = function(){
            timer = setInterval(autoPlay,3000);
        }


        // 点击页码切换
        div.onclick = function(e){
            if(e.target.tagName.toLowerCase() === 'span'){
                index = e.target.innerText-1;
                show();
            }
        }

        banner.onclick = function(e){
            // 上一张
            if(e.target.className === 'btn-prev'){
                index--;

                show();
            }else if(e.target.className === 'btn-next'){
                index++;

                show();
            }
        }


        function autoPlay(){
            index++;

            show();

        }

        function show(){
            if(index>=imgNum){
                ul.style.left = 0;
                index = 1;
            }else if(index<0){
                index = imgNum-2;
            }

            animate(ul,{left:-index*imgWidth});

            //显示页码高亮
            //去除其他高亮，添加当前高亮
            for(let i=0;i<imgNum-1;i++){
                if(i===index){
                    div.children[i].className = 'active';
                }else{
                    div.children[i].className = '';
                }
            }

            // 当到达复制图片动画时，高亮显示第一个页码
            if(index === imgNum-1){
                div.children[0].className = 'active';
            }

        }
    })();

    //动态效果
    (function(){
        //off部分
        let imgs1 = document.querySelectorAll('#off .off img');
        for(let i=0;i<imgs1.length;i++){
            imgs1[i].onmouseover = function(){
                animate(this,{top:-8});
            }
            imgs1[i].onmouseleave = function(){
                animate(this,{top:0});
            }
        }

        //find部分
        let imgs2 = document.querySelectorAll('#find .find img');
        for(let i=0;i<imgs2.length;i++){
            imgs2[i].onmouseover = function(){
                animate(this,{left:-8});
            }
            imgs2[i].onmouseleave = function(){
                animate(this,{left:0});
            }
        }

        //middle_banner部分
        let as = document.querySelectorAll('.middle_banner a');
        for(let i=0;i<as.length;i++){
            as[i].onmouseover = function(){
                animate(this,{opacity:0.7});
            }
            as[i].onmouseleave = function(){
                animate(this,{opacity:1});
            }
        }

        //life部分
        // let imgs3 = document.querySelectorAll('#life .life img');
        // for(let i=0;i<imgs3.length;i++){
        //     imgs3[i].onmouseover = function(){
        //         animate(this,{left:-8});
        //     }
        //     imgs3[i].onmouseleave = function(){
        //         animate(this,{left:-8});
        //     }
        // }
        
    })();

});