package com.work.virus.pojo;

import java.io.Serializable;
import java.util.Date;

public class Change implements Serializable {
    private Integer id;

    private String opreator;

    private String oType;

    private Date changeTime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOpreator() {
        return opreator;
    }

    public void setOpreator(String opreator) {
        this.opreator = opreator == null ? null : opreator.trim();
    }

    public String getoType() {
        return oType;
    }

    public void setoType(String oType) {
        this.oType = oType == null ? null : oType.trim();
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }
}