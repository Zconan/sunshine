document.addEventListener('DOMContentLoaded',()=>{

    //显示商品页点击商品的详情信息
    (function(){
        let res = location.search;
        //截取
        res = res.substring(1);
        //String->Object
        res = res.split('&');

        let obj = {};

        res.forEach(function(item){
            //拆分
            let arr = item.split('=');
            obj[arr[0]] = decodeURI(arr[1]);
        });

        //获取相关元素
        //放大镜功能
        let left = document.querySelector('.detile .left');
        left.innerHTML =   `<div class="demo">
                                <a class="cloud-zoom" id="zoom1" href="${obj.imgurl}" rel="adjustX: 10, adjustY:-4, softFocus:true">
                                    <img src="${obj.imgurl}" title="" alt="" />
                                </a>
                                <a href='${obj.imgurl}' class='cloud-zoom-gallery' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '${obj.imgurl}' ">
                                    <img src="${obj.imgurl}" alt = "Thumbnail 1"/ style="width:50px;height:50px;">
                                </a>   
                                <a href='${obj.imgurl}' class='cloud-zoom-gallery' title='Thumbnail 2' rel="useZoom: 'zoom1', smallImage: '${obj.imgurl}'">
                                    <img src="${obj.imgurl}" alt = "Thumbnail 2" style="width:50px;height:50px;"/>
                                </a>                  
                            </div>`;
        let h4 = document.querySelector('.detile .right h4');
        let price = document.querySelector('.detile .right .price p:first-child span');
        h4.innerText = obj.name;
        price.innerText = '￥' + obj.price;

    })();

});