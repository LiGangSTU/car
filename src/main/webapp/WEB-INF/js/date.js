//时间转换函数
function showTime(tempDate) {
    //把距离标准时间到现在的毫秒数转换成date对象
    var d =new Date(tempDate);
    var year = d.getFullYear();
    var month = d.getMonth();

    month++;

    var day = d.getDate();
    var hour = d.getHours();

    var minutes = d.getMinutes();
    var seconds = d.getSeconds();
    //把小于 月份变成双数
    month = month<10?"0"+month:month;
    day = day<10?"0"+day:day;
    hour = hour<10?"0"+hour:hour;
    minutes = day<10?"0"+minutes:minutes;
    seconds = day<10?"0"+seconds:seconds;

    var time = year+"-"+month+"-"+day+" "+hour+":"+minutes+":"+seconds;
    return time;

}