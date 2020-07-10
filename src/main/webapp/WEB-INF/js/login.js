
layui.use(['layer','form',"jquery"],function () {
    //如果父窗口为空，用当前窗口，用最顶层的窗口
    var layer = parent.layer === undefined ? layui.layer : top.layer;
    var form = layui.form;
    var $ = layui.jquery;
    //监听表单的提交事件
    form.on('submit(login)', function (data) {
        var th = $(this); //表格的提交按钮
        $(this).text("登录中.....").attr("disabled", "disabled").addClass("layui_disabled");
        console.log(data.field);  //当前容器的全部表单字段
        //延时一秒给后台发送登录信息
        setTimeout(function () {
            //通过ajax给 后台发送登录信息
            $.ajax({
                type :"post",
                url : "/index/user/userLogin",
                data :data.field,
                dataType : "json",
                success : function(res){
                   // layer.alert(res.message,{icon :2});
                    if(res.message === "success"){
                        window.location.href ="home/index";
                    }else {
                        layer.alert(res.message,{icon :2});
                        //如果登录失败 登陆中回复登录
                        th.text("登录").removeAttr("disabled").removeClass("layui-disabled");
                    }
                }
            })
        },1000)
        //return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可
    });

    //当聚焦 或者失去焦点时表单的样式
    //当在input输入框聚焦时，改变原来的样式
    $(".loginBody .layui-form-item .layui-input").focus(function () {
        $(this).parent().addClass("layui-input-focus");
    });

    $(".loginBody .layui-form-item .layui-input").blur(function () {
        $(this).parent().removeClass("layui-input-focus");
        if ($(this).val() !== '') {
            $(this).parent().addClass("layui-input-active");
        } else {
            $(this).parent().removeClass("layui-input-active");
        }
    })

});

function changeCode() {
    var img = document.getElementById("codeImg");
    img.src="/home/getCode?time="+new Date().getTime();
}