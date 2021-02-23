package com.bean;

public class Store {

    private Integer s_id;
    private String s_loginname;
    private String s_password;
    private String s_phone;
    private String s_fullname;
    private Integer s_age;
    private String s_email;
    private String s_shopname;
    private String s_address;
    private String s_desc;

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public String getS_loginname() {
        return s_loginname;
    }

    public void setS_loginname(String s_loginname) {
        this.s_loginname = s_loginname;
    }

    public String getS_password() {
        return s_password;
    }

    public void setS_password(String s_password) {
        this.s_password = s_password;
    }

    public String getS_phone() {
        return s_phone;
    }

    public void setS_phone(String s_phone) {
        this.s_phone = s_phone;
    }

    public String getS_fullname() {
        return s_fullname;
    }

    public void setS_fullname(String s_fullname) {
        this.s_fullname = s_fullname;
    }

    public Integer getS_age() {
        return s_age;
    }

    public void setS_age(Integer s_age) {
        this.s_age = s_age;
    }

    public String getS_email() {
        return s_email;
    }

    public void setS_email(String s_email) {
        this.s_email = s_email;
    }

    public String getS_shopname() {
        return s_shopname;
    }

    public void setS_shopname(String s_shopname) {
        this.s_shopname = s_shopname;
    }

    public String getS_address() {
        return s_address;
    }

    public void setS_address(String s_address) {
        this.s_address = s_address;
    }

    public String getS_desc() {
        return s_desc;
    }

    public void setS_desc(String s_desc) {
        this.s_desc = s_desc;
    }

    @Override
    public String toString() {
        return "Store{" +
                "s_id=" + s_id +
                ", s_loginname='" + s_loginname + '\'' +
                ", s_password='" + s_password + '\'' +
                ", s_phone='" + s_phone + '\'' +
                ", s_fullname='" + s_fullname + '\'' +
                ", s_age=" + s_age +
                ", s_email='" + s_email + '\'' +
                ", s_shopname='" + s_shopname + '\'' +
                ", s_address='" + s_address + '\'' +
                ", s_desc='" + s_desc + '\'' +
                '}';
    }
}
