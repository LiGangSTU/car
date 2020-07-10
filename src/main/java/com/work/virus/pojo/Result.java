package com.work.virus.pojo;

import java.util.List;

public class Result {
    // 返回结果信息值   如果成功返回 ok
    //    "code": res.status, //解析接口状态
//    "msg": res.message, //解析提示文本
//    "count": res.total, //解析数据长度
//    "data": res.data.item //解析数据列表

    private String status="0";

    private String message="success";

    private Integer total=100;

    private List item=null;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List getItem() {
        return item;
    }

    public void setItem(List item) {
        this.item = item;
    }
}
