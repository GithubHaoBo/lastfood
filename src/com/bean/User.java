package com.bean;

public class User {

    private Integer u_id;
    private String u_loginname;
    private String u_password;
    private String u_phone;
    private String u_fullname;
    private String u_sex;
    private Integer u_age;
    private String u_email;
    private String u_address;
    private String u_card;
    private String u_code;

    @Override
    public String toString() {
        return "User{" +
                "u_id=" + u_id +
                ", u_loginname='" + u_loginname + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_fullname='" + u_fullname + '\'' +
                ", u_sex='" + u_sex + '\'' +
                ", u_age=" + u_age +
                ", u_email='" + u_email + '\'' +
                ", u_address='" + u_address + '\'' +
                ", u_card='" + u_card + '\'' +
                ", u_code='" + u_code + '\'' +
                '}';
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_loginname() {
        return u_loginname;
    }

    public void setU_loginname(String u_loginname) {
        this.u_loginname = u_loginname;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_fullname() {
        return u_fullname;
    }

    public void setU_fullname(String u_fullname) {
        this.u_fullname = u_fullname;
    }

    public String getU_sex() {
        return u_sex;
    }

    public void setU_sex(String u_sex) {
        this.u_sex = u_sex;
    }

    public Integer getU_age() {
        return u_age;
    }

    public void setU_age(Integer u_age) {
        this.u_age = u_age;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_address() {
        return u_address;
    }

    public void setU_address(String u_address) {
        this.u_address = u_address;
    }

    public String getU_card() {
        return u_card;
    }

    public void setU_card(String u_card) {
        this.u_card = u_card;
    }

    public String getU_code() {
        return u_code;
    }

    public void setU_code(String u_code) {
        this.u_code = u_code;
    }
}
