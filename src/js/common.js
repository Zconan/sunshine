//动画函数封装
function animate(ele,options,callback){//undefined
    //target,attr
    //定时器数量
    var timerLen = 0;
    for(var key in options){
        timerLen++;

        (function(attr){
            var timerName = attr + 'Timer';

            // 获取目标值
            var target = options[attr];

            clearInterval(ele[timerName]);
            
            ele[timerName] = setInterval(function(){
                //获取当前值
                var current = getComputedStyle(ele)[attr];

                // 提取单位
                var unit = current.match(/[a-z]+$/);//得到数组
                // 避免报错
                if(unit===null){
                    unit = '';
                }else{
                    unit = unit[0];
                }

                // 提取值
                current = parseFloat(current);

                // 计算缓冲速度
                // 避免速度过小，同时避免速度为0
                var speed = (target-current)/10;

                if(attr === 'opacity'){
                    //避免小数位过多
                    current = current.toFixed(2)*1;
                    if( speed<0 && speed>-0.01){
                        speed = -0.01;
                    }
                    if( speed>0 && speed<0.01){
                        speed = 0.01;
                    }
                }else{
                    speed = speed>0 ? Math.ceil(speed) : Math.floor(speed);
                }

                //设置值
                var val = current + speed;

                // 到达目标值，停止定时器
                if(val === target){
                    clearInterval(ele[timerName]);

                    //重置值
                    val = target;

                    // 每完成一个动画，数量减1
                    timerLen--;

                    // 当定时器为最后一个，且有回调函数时，执行回调函数
                    if(timerLen === 0 && typeof callback === 'function'){
                        callback();
                    }
                }

                //修改样式
                ele.style[attr] = val + unit;
            },30);
        })(key);
    }
}