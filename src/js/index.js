document.addEventListener('DOMContentLoaded',function(){
    //轮播图
    (function(){
        //获取相关元素
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

        //每三秒执行一次动画
        let timer = setInterval(autoPlay,3000);
        //鼠标放上图片停止动画
        banner.onmouseover = ()=>{
            clearInterval(timer);
        }
        //鼠标离开图片执行动画
        banner.onmouseout = ()=>{
            timer = setInterval(autoPlay,3000);
        }

        //生成下标
        let div = document.createElement('div');
        for(let i=0;i<imgNum-1;i++){
            let span = document.createElement('span');
            div.appendChild(span);
            banner.appendChild(div);           
        }

        let idx = 0;
        function autoPlay(){
            idx++;
            if(idx > imgNum-1){
                ul.style.left = 0;
                idx = 1;
            }
            animate(ul,{left:-imgWidth*idx});
        }
    })();

});