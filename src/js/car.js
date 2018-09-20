//购物车功能
jQuery(function($){

    //数量增加
    $('#car').on('click','.addnum',function(){
        //获取数量框的值
        var val = $(this).prev().val();
        //重置数量框的值
        val++;
        $(this).prev().val(val);
        //小计
        price($(this));
        //显示购物车商品总数量
        allNum();
        //勾选数量
        var arr = checkNum();
        //显示勾选商品总数量
        chooseNum(arr);
        //显示勾选商品总价格
        choosePrice(arr);
    });

    //数量减少
    $('#car').on('click','.cutnum',function(){
        //获取数量框的值
        var val = $(this).next().val();
        //重置数量框的值
        val--;
        if(val < 1){
            val = 1;
        }
        $(this).next().val(val);
        //小计
        price($(this));
        //显示购物车商品总数量
        allNum();
        //勾选数量
        var arr = checkNum();
        //显示勾选商品总数量
        chooseNum(arr);
        //显示勾选商品总价格
        choosePrice(arr);
    });

    //小计
    function price(now){
        //获取单价
        var unit = now.parent().prev().text();
        unit = unit.slice(2); 
        //单价乘以数量等于总价
        var res = unit*now.parent().find('input').val();
        now.parent().next().html('￥&nbsp;' + res.toFixed(1));
    }

    //计算购物车商品总数量
    function allNum(){
        var res = 0;
        //累加每一种商品总数量
        for(var i=0;i<$('.nownum').length;i++){
            res += $('.nownum').eq(i).val()*1;
        }
        $('.all span i').text(res);
    }

    //计算勾选商品总数量
    function chooseNum(arr){
        var res = 0;
        //累加勾选每一种商品总数量
        for(var i=0;i<arr.length;i++){
            res += $('.nownum').eq(arr[i]).val()*1;
        }
        $('.total_num i').text(res);
    }

    //计算勾选商品总价
    function choosePrice(arr){
        var res = 0;
        //累加勾选每一种商品总价格
        for(var i=0;i<arr.length;i++){
            var price = $('.good_total').eq(arr[i]).text();
            price = price.slice(2)*1;
            res += price;
        }
        $('.total_price i').html('￥&nbsp;' + res.toFixed(1));
    }

    //全选与全不选
    $('#car').on('click','.title input',function(){
        //设置属性使每一个反选按钮的状态与全选状态相同
        $('.good_check input').prop('checked',this.checked);
        //勾选数量
        var arr = checkNum();
        //显示勾选商品总数量
        chooseNum(arr);
        //显示勾选商品总价格
        choosePrice(arr);
    });

    //反选
    $('#car').on('click','.good_check input',function(){
        //勾选数量
        var arr = checkNum();
        //显示勾选商品总数量
        chooseNum(arr);
        //显示勾选商品总价格
        choosePrice(arr);
        if(arr.length === $('.good_check input').length){
            $('.title input').prop('checked','checked');

        }else{
            $('.title input').removeAttr('checked');
        }
    });

    //全删
    $('#car').on('click','.account input',function(){
        $('.good_check input').prop('checked',this.checked);
    });

    //删除选中
    $('#car').on('click','.account a',function(){
        //勾选数量
        var arr = checkNum();
        var msg = confirm('你确定要删除选中商品吗？');
        if(msg){
            for(var i=arr.length-1;i>=0;i--){
                $('.goods').children().eq(arr[i]).remove();
            }
        }
        update();
    });

    //删除单行
    $('#car').on('click','.good_del a:first',function(){
        var msg = confirm('你确定要删除该商品吗？');
        if(msg){
            $(this).parent().parent().remove();
        }
        update();
    });

    //勾选数量
    function checkNum(){
        var arr = [];
        for(var i=0;i<$('.good_check input').length;i++){
            if($('.good_check input').eq(i).prop('checked')){
                arr.push(i);
            }
        }
        return arr;    
    }

    //购物车没商品时
    function update(){
        if($('.addnum').length === 0){
            $('.car').html('');          
        }
    }
      
});
//加入购物车
document.addEventListener('DOMContentLoaded',()=>{
    //获取相关元素
    let goods = document.querySelector('.goods');   

    //获取cookie
    let goodslist = document.cookie;
    let idx = goodslist.indexOf('[');
    goodslist = goodslist.slice(idx);
    if(goodslist === ''){
        goodslist = [];
    }else{
        goodslist = JSON.parse(goodslist);
    }

    for(let i=0;i<goodslist.length;i++){
        //创建li标签
        let li = document.createElement('li');
        //创建good_check的p标签
        let p1 = document.createElement('p');
        p1.className = 'good_check';
        let input1 = document.createElement('input');
        input1.type = 'checkbox';
        let img1 = document.createElement('img');
        img1.src = 'goodslist[i].imgurl';
        p1.appendChild(input1);
        p1.appendChild(img1);
        li.appendChild(p1);
        //创建good_name的p标签
        let p2 = document.createElement('p');
        p2.className = 'good_name';
        p2.innerText = goodslist[i].name;
        li.appendChild(p2);
        //创建good_price的p标签
        let p3 = document.createElement('p');
        p3.className = 'good_price';
        p3.innerHTML = '￥&nbsp;' + (goodslist[i].price.slice(3)*1).toFixed(1);
        li.appendChild(p3);
        //创建good_num的p标签
        let p4 = document.createElement('p');
        p4.className = 'good_num';
        let span1 = document.createElement('span');
        span1.className = 'cutnum';
        span1.innerText = '-';
        let input2 = document.createElement('input');
        input2.className = 'nownum';
        input2.value = goodslist[i].qty;
        let span2 = document.createElement('span');
        span2.className = 'addnum';
        span2.innerText = '+';
        p4.appendChild(span1);
        p4.appendChild(input2);
        p4.appendChild(span2);
        li.appendChild(p4);
        //创建good_total的p标签
        let p5 = document.createElement('p');
        p5.className = 'good_total';
        p5.innerHTML = '￥&nbsp;' + ((goodslist[i].price.slice(3)*1)*(goodslist[i].qty*1)).toFixed(1);
        li.appendChild(p5);
        //创建good_del的p标签
        let p6 = document.createElement('p');
        p6.className = 'good_del';
        let a1 = document.createElement('a');
        a1.innerText = '删除';
        let a2 = document.createElement('a');
        a2.innerText = '移入收藏夹';
        p6.appendChild(a1);
        p6.appendChild(a2);
        li.appendChild(p6);
        goods.appendChild(li);
    }

});