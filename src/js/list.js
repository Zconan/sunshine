document.addEventListener('DOMContentLoaded',()=>{
    //点击页数加载商品列表(与后端实现)
    (function(){
        //获取相关元素
        let goods = document.querySelector('#goodslist .goodslist .bottom .right .goods');
        let page = document.querySelector('#goodslist .goodslist .bottom .right .page');
        let sort = document.querySelector('#goodslist .goodslist .bottom .right .sort');
        let zong = document.querySelector('#goodslist .goodslist .top .zong');
        //状态值
        let statusCode = [200,304];
        //创建ajax对象
        let xhr = new XMLHttpRequest();
        //处理服务器返回数据
        xhr.onload = ()=>{
            if(statusCode.indexOf(xhr.status) >= 0){
                let res = JSON.parse(xhr.responseText);

                //计算分页
                let len = Math.ceil(res.total/res.qty);
                //创建分页标签
                page.innerHTML = '';
                for(let i=1;i<=len;i++){
                    let span = document.createElement('span');
                    span.innerText = i;
                    if(i === res.pageNum){
                        span.className = 'active';
                    }else{
                        span.className = '';
                    }
                    page.appendChild(span);
                }

                zong.innerText = '共' + res.total + '件商品';

                //创建节点生成商品页面
                let ul = document.createElement('ul');
                ul.innerHTML = res.data.map(item=>{
                    return `<li data-guid="${item.id}">
                                <a href="#"><img src="${item.imgurl}" /></a>
                                <span class="small"><img src="${item.imgurl}" /></span> 
                                <p class="price">价格：<span>${item.price}</span></p>
                                <h4>${item.title}</h4>
                                <p class="num">销量：<span>${item.num}</span></p>
                                <button class="addCar">加入购物车</button>
                            </li>`;
                }).join('');
                goods.innerHTML = '';
                goods.appendChild(ul);
            }
        }
        //建立与服务器的连接
        xhr.open('get','../api/list.php?page=1&qty=15',true);
        //发送请求
        xhr.send();

        //点击分页标签加载数据，事件委托
        page.onclick = e=>{
            if(e.target.tagName.toLowerCase() === 'span'){
                let pageNum = e.target.innerText;
                xhr.open('get','../api/list.php?page='+pageNum+'&qty=15',true);
                xhr.send();
            }
        }

        //排序，事件委托
        let desc = false;
        sort.onclick = e=>{
            desc = !desc;
            //价格排序
            if(e.target.className === 'price_sort'){
                xhr.open('get','../api/list.php?page=1&qty=15&param=price'+(desc?'&desc':''),true);
                xhr.send();
            }
            //销量排序
            if(e.target.className === 'num_sort'){
                xhr.open('get','../api/list.php?page=1&qty=15&param=num'+(desc?'&desc':''),true);
                xhr.send();
            }
        }
        
    })();

    //加入购物车
    (function(){
        //获取相关元素
        let goods = document.querySelector('.goods');

        //声明一个数组用于存放商品信息
        let goodslist = document.cookie;
        let idx = goodslist.indexOf('[');
        goodslist = goodslist.slice(idx);
        if(goodslist === ''){
            goodslist = [];
        }else{
            goodslist = JSON.parse(goodslist);
        }

        //事件委托绑定事件
        goods.onclick = e=>{

            if(e.target.className === 'addCar'){
                //获取当前li
                let currentLi = e.target.parentNode;

                //商品唯一标识
                let guid = currentLi.getAttribute('data-guid');

                //判断数量
                let qty;
                for(var i=0;i<goodslist.length;i++){
                    if(guid === goodslist[i].guid){
                        goodslist[i].qty++;
                        break;
                    }
                }
                if(i === goodslist.length){
                    //保存商品信息
                    let good = {
                        guid : guid,
                        imgurl : currentLi.children[0].children[0].src,
                        price : currentLi.children[2].innerText,
                        name : currentLi.children[3].innerText, 
                        //数量,第一次点击时数量为1,多次点击时在原来基础上加1
                        qty : 1
                    };

                    goodslist.push(good);
                }

                //保存cookie
                document.cookie = 'goodslist=' + JSON.stringify(goodslist);

            }
        }
        
    })();

    //去购物车
    (function(){
        //获取相关元素
        let car = document.querySelector('.header_search .car');
        car.onclick = ()=>{
            location.href = '../html/car.html';
        }
    })();
});