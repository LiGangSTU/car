//时间转换函数
function showTime(tempDate){
    //把距离标准时间的到现在的毫秒数，转换成data对象
    var date = new Date(tempDate);
    var year = date.getFullYear();
    var month = date.getMonth();
    month++;
    //获取当前的日
    var day = date.getDate();
    var hour = date.getHours();
    var min = date.getMinutes();
    var sec = date.getSeconds();
    //把小于 月份变成双数
    month = month < 10 ? "0"+month : month;
    day = day  < 10 ? "0"+day : day;
    hour = hour < 10 ? "0"+ hour : hour;
    min = min < 10 ? "0"+min : min;
    sec = sec < 10 ? "0"+sec : sec;
    var time = year+"-"+month +"-"+ day+" "+hour +":"+ min+":"+ sec;
    return time;

}