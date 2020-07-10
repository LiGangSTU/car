package com.work.virus.pojo;

/**
 * @Author LiGang
 * @Date 2020/2/24 10:55
 * @Version 1.0
 */

public class Page {
    private Integer page; //页数 从第几条开始
    private Integer pageTotal;  //每页多少条

    public Page(Integer page, Integer pageTotal) {
        this.page = (page-1)*pageTotal;  //计算出从第几条开始分页
        this.pageTotal = pageTotal;
    }
    public Page(){}

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    @Override
    public String toString() {
        return "Page{" +
                "page=" + page +
                ", pageTotal=" + pageTotal +
                '}';
    }
}
