document.addEventListener('DOMContentLoaded',()=>{
    //放大镜功能
    (function(){
        //获取相关元素
        let top = document.querySelector('.detile .left .top');
        let bigBox = document.querySelector('.detile .left .big_box');
        let bigImg = bigBox.children[0];
        let lay = top.children[1];
        //鼠标移入bigBox和lay显示出来
        top.onmouseover = ()=>{
            lay.style.display = 'block';
            bigBox.style.display = 'block';
        }
        //鼠标移出bigBox和lay隐藏
        top.onmouseout = ()=>{
            lay.style.display = 'none';
            bigBox.style.display = 'none';
        }
        top.onmousemove = function(e){
            //图片的放缩比例
            let scale = 4;
            //将鼠标放在放大镜中间
            let x = e.clientX - lay.offsetWidth/2;
            let y = e.clientY - lay.offsetHeight/2;
            //将放大镜宽高和盒子结合起来按比例放缩
            lay.style.width = parseInt(this.offsetWidth/scale) + 'px';
            lay.style.height = parseInt(this.offsetHeight/scale) + 'px';
            //设置大盒子宽高
            bigBox.style.width = this.offsetWidth*scale + 'px';
            bigBox.style.height = this.offsetHeight*scale + 'px';
            if(x < 0){
                x = 0;
            }
            if(x >= this.offsetWidth - lay.offsetWidth){
                x = this.offsetWidth - lay.offsetWidth;
            }
            if(y >= this.offsetHeight - lay.offsetHeight){
                y = this.offsetHeight - lay.offsetHeight;
            }
            if(y < 0){
                y = 0;
            }
            lay.style.left = x + 'px';
            lay.style.top = y + 'px';
            //同比例放缩，大的盒子图片的放缩比例，当小盒子向右移的时候，大盒子向左移同等比例的宽高
            let left = lay.offsetLeft*scale
            let top = lay.offsetTop*scale;
            bigImg.style.marginLeft = (left*(-1)) + 'px';
            bigImg.style.marginTop = (top*(-1)) + 'px';
        }
    })();
});