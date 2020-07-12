package com.work.virus.pojo;

import java.io.Serializable;
import java.util.Date;

public class Car implements Serializable {
    private Integer id;

    private String brand;

    private String color;

    private Integer seatnum;

    private Float oilconsumption;

    private Date birthtime;

    private Integer rentnum;

    private String opreator;

    private Date createtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public Integer getSeatnum() {
        return seatnum;
    }

    public void setSeatnum(Integer seatnum) {
        this.seatnum = seatnum;
    }

    public Float getOilconsumption() {
        return oilconsumption;
    }

    public void setOilconsumption(Float oilconsumption) {
        this.oilconsumption = oilconsumption;
    }

    public Date getBirthtime() {
        return birthtime;
    }

    public void setBirthtime(Date birthtime) {
        this.birthtime = birthtime;
    }

    public Integer getRentnum() {
        return rentnum;
    }

    public void setRentnum(Integer rentnum) {
        this.rentnum = rentnum;
    }

    public String getOpreator() {
        return opreator;
    }

    public void setOpreator(String opreator) {
        this.opreator = opreator == null ? null : opreator.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}