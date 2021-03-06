layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider','form'], function(){
    var laydate = layui.laydate //日期
        ,laypage = layui.laypage //分页
        ,layer = layui.layer //弹层
        ,table = layui.table //表格
        ,carousel = layui.carousel //轮播
        ,upload = layui.upload //上传
        ,element = layui.element //元素操作
        ,slider = layui.slider //滑块
        ,form1 = layui.form ;//表格
    // 不用单独引入  jquery 了  jquery已经  封到layui.js里
    //执行一个laydate实例
    var $ = layui.jquery;

    laydate.render({
        elem: '#test1' //指定元素
        ,btns: ['clear', 'now']
        ,trigger: 'click'
    });
    laydate.render({
        elem: '#start_time' //指定元素
        ,btns: ['clear', 'now']
        ,trigger: 'click'
    });
    laydate.render({
        elem: '#end_time' //指定元素
        ,btns: ['clear', 'now']
        ,trigger: 'click'
    });
    //向世界问个好
    layer.msg('汽车数据');

    //执行一个 table 实例
    var tableIns =  table.render({
        elem: '#demo'
        ,height: 420
        ,url: '/index/car/selectAll' //数据接口
        ,parseData: function(res) { //res 即为原始返回的数据
            return {
                "code": res.status, //解析接口状态 要求是"0"
                "msg": res.message, //解析提示文本
                "count": res.total, //解析数据长度
                "data": res.item //解析数据列表
            };
        }
        ,title: '汽车表'
        ,page: true //开启分页
        ,toolbar: '#bar' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
        ,totalRow: true //开启合计行
        ,cols: [[ //表头
            {type: 'checkbox', fixed: 'left'}
            ,{field: 'id', title: 'ID', width:80, sort: true,align:'center'}
            ,{field: 'brand', title: '品牌', width:80,edit:"text"}
            ,{field: 'color', title: '颜色', align:'center',edit:"text"}
            ,{field: 'seatnum', title: '座位数', align:'center',edit:"text"}
            ,{field: 'oilconsumption', title: '每公里油耗', align:'center',edit:"text"}
            ,{field: 'birthtime', title: '生产日期',
                templet:'<div>{{ layui.util.toDateString(d.birthtime, "yyyy-MM-dd") }}</div>' ,align:'center'}
            ,{field: 'rentnum', title: '日租金', align:'center',edit:"text"}
            , {field: 'carImg', title: '缩略图', width: 180, align: 'center', templet: function (res) {
                    return "<img width=40 height=30 src=/index/file/downloadFile?path=" + res.carImg + "/>";}}
            ,{field: 'opreator', title: '记录员', align:'center'}
            ,{field: 'createtime', title: '添加日期',
                templet:'<div>{{ layui.util.toDateString(d.createtime, "yyyy-MM-dd") }}</div>' , align:'center'}
        ]]
    });
    //监听单元格编辑
    table.on('edit(carTable)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
        console.log("修改后的值是："+obj.value); //得到修改后的值
        console.log("修改后的对应字段是："+obj.field); //当前编辑的字段名
        console.log("修改后的数据是："+obj.data); //所在行的所有相关数据
        console.log("videotable的id是"+obj.data.id); //打印所在行的id

        //通过ajax往后台发送消息 发送到控制层 修改update方法
        $.ajax({
            type :"post",
            url :"/index/car/update",
            data : {
                "id": obj.data.id,
                "field":obj.field,
                "value":obj.value
            },
            dataType :"json",
            success : function(res) {
                //弹出一个修改成功的消息
                layer.msg(res.message);
            }
        })
    });
    table.on('toolbar(carTable)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id)
            ,data = checkStatus.data; //获取选中的数据
        // 用来群删除的数组
        var ids=[];
        for(var i=0;i<data.length;i++){
            ids[i] = data[i].id;
        }
        console.log(obj.config.id);
        console.log(data);
        switch(obj.event){
            case 'delete':
                if(data.length === 0){
                    layer.msg('请选择一行');
                } else {
                    alert("你要删除汽车了！");
                    layer.msg('删除');
                    // 通过ids  id 数组进行删除
                    $.ajax({
                        type:"post",
                        url:"/index/car/deleteA",
                        data:{
                            "ids":ids
                        },
                        dataType:"json",
                        traditional:true, //如果传输的是数组  要求是 这个参数
                        success:function(res){
                            var message = res.message;
                            var code = res.status;
                            if(code=="200"){
                                // 弹出信息框  点击信息框 表格刷新
                                // 参数1 弹出的信息  参数2 图标  参数3点击按钮触发事件
                                layer.alert(message,{icon:1},function(index){
                                    // 关掉  信息框
                                    layer.close(index);
                                    // 表格进行重载
                                    // tableIns.reload();
                                    window.parent.location.reload();
                                })
                            }
                        },
                        error : function (res) {
                            console.log(res);
                            alert("删除失败！");
                        }
                    })
                }
                break;
            case 'add':
                layer.msg('添加');
                //需要打开添加层,打开视频添加窗口 弹出一个层
                layer.open({
                    type:2,  //框架窗口
                    title :"添加汽车",
                    shape :0.8,  //外部阴影配置
                    shadeClose:true, //点击窗口外部时，窗口消失
                    area : ['60%','60%'],
                    content : "/index/templates/addcar.html"
                });
                break;
            case 'update':
                if(data.length === 0){
                    layer.msg('请选择一行');
                } else if(data.length > 1){
                    layer.msg('只能同时编辑一个');
                } else {
                    layer.alert('编辑 [id]：'+ checkStatus.data[0].id);
                }
                break;
        }
    });
    //下拉选择
    form1.on('select(brand)', function(data){
        console.log("下拉选择"+data.valueOf());
        // var inputVal = $("#hidGuideType").val();
        $.ajax({
            url: '/index/brand/findOrgTypeList',
            dataType: 'json',
            data:{'state': 0},	//查询状态为正常的所有机构类型
            contentType: "application/json; charset=utf-8",
            type: 'post',
            success: function (data) {
                console.log(data.item);
               // $("#brandtype").empty();
                $.each(data.item, function (index, item) {
                    console.log(item.brandName);
                    $('#brandtype').append(new Option(item.brandName,item.id));// 下拉菜单里添加元素
                });
               // console.log($('#brandtype').val(value()));
                //$("#hidGuideType").val(data.item.brandName);
                // if(data.item.brandName !== inputVal ){
                //     $(#hidGuideType).change();
                // }
                // $(#hidGuideType).val(data.value);
                layui.form.render("select");
            },
            error:function (res) {
                console.log("failure "+res.message);
            }
        })
    });
    //input值发生变化事件
    $("#hidGuideType").on('change',function(){
        console.log('layui下拉框的值发生了变化');
    });
    //搜索
    //写一个点击事件,当点击搜索按钮时
    // $("#rebybrand").on("click",function() {
    //     //搜索的功能
    //     //表格重载函数
    //     console.log("要进行表格重载");
    //     console.log($("#brandlike").val());
    //     table.reload('demo', {
    //         url :"/index/car/queryByBrand",//会自动把page和limit加到后边，便于查询
    //         where: { //设定异步数据接口的额外参数，任意设
    //             //获取传进来的省份名
    //             brand:$("#brandlike").val()
    //         }
    //         ,page: {
    //             curr: 1 //重新从第 1 页开始
    //         }
    //     }); //只重载数据
    // });
    // //精准查询颜色
    // $("#rebycolor").on("click",function() {
    //     //搜索的功能
    //     //表格重载函数
    //     console.log("要进行表格重载");
    //     console.log($("#colorlike").val());
    //     table.reload('demo', {
    //         url :"/index/car/queryByColor",//会自动把page和limit加到后边，便于查询
    //         where: { //设定异步数据接口的额外参数，任意设
    //             //获取传进来的省份名
    //             color:$("#colorlike").val()
    //         }
    //         ,page: {
    //             curr: 1 //重新从第 1 页开始
    //         }
    //     }); //只重载数据
    // });
    //城市相关信息 表单上传
    $("#rebytime").on("click",function () {
        table.reload('demo', {
            url :"/index/car/queryByTarget",//会自动把page和limit加到后边，便于查询
            where: { //设定异步数据接口的额外参数，任意设
                start_time:$("#start_time").val(),
                end_time:$("#end_time").val(),
                brand:$("#brandlike").val(),
                color:$("#colorlike").val()
            }
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        }); //只重载数据
    });
    $("#submit").on("click",function () {
        alert("你要增加汽车了！");
        //获取表单的原生对象 两种获得方法 指的是JavaScript的节点对象
        //ajax与后台传值
        var fd2 = $("#form1")[0];
        console.log(fd2);
        var formdata = new FormData(fd2);
        for (var [a, b] of formdata.entries()) {
            console.log(a, b);
        }
        var objData = {};
        for (var entry of formdata.entries()){
            objData['"'+entry[0]+'"'] = entry[1];
        }
        // formdata.forEach((value, key) => objData[eval('(' + key + ')')] = value);
        console.log(objData);
        console.log(JSON.toString(objData).valueOf());
        $.ajax({
            url :"/index/car/add",
            type :"POST",
            data :formdata,
            dataType :"",
            //contentType: "application/json; charset=utf-8",
            async: false,
            cache: false,
            contentType : false, //防止jQuery对其操作产生不好的影响
            processData : false, // 当设置为true时，jQuery ajax不会序列化，直接使用data
            success: function (res) {
                parent.layer.alert(res.message,{icon:1},function () {
                    // 点击确定之后刷新父窗口
                    window.parent.location.reload();
                });
            },
            error : function(res){
                parent.layer.alert("ERROR",{icon:2},function () {
                    // 点击确定之后刷新父窗口
                    window.parent.location.reload();
                });
                console.log("failure");
            }
        })
    })

    //查看大图
    // function showBigCarImg(data) {
    //     mainIndex = layer.open({
    //         type: 1,
    //         title: '【'+data.brand+'】的车辆大图',
    //         content: $("#viewBigCarImg"),
    //         area: ['750px', '500px'],
    //         success: function (index) {
    //             $("#viewCarImg").attr("src","index/file/downloadFile?path="+data.carImg);
    //         }
    //     });
    // }
    //上传缩略图
    upload.render({
        elem: '#carImgDiv',
        url: '../file/uploadFile',
        acceptMime: 'image/*',
        field: 'upload',
        done: function (res, index, upload) {
            // $('#showCarImg').attr('src', 'index/file/downloadFile?path=' + res.data.src);
            $('#viewBigCarImg').attr('src', '../file/downloadFile?path=' + res.data.src);
            $('#carImg').val(res.data.src);
            $('#carImgDiv').css("background", "#fff");
        }
    });
});


