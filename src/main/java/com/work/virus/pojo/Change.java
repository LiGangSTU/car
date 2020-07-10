package com.work.virus.pojo;

import java.io.Serializable;
import java.util.Date;

public class Change implements Serializable {
    private Integer id;

    private Integer opreator;

    private Integer type;

    private Date changeTime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOpreator() {
        return opreator;
    }

    public void setOpreator(Integer opreator) {
        this.opreator = opreator;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }
}