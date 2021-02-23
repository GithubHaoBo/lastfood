package com.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Employee {

    private Integer e_id;
    private String e_name;
    private String e_age;
    private String e_phone;
    private String e_createdate;
    private Integer s_id;
    private Integer e_salary;
    private String e_email;

    public String getE_email() {
        return e_email;
    }

    public void setE_email(String e_email) {
        this.e_email = e_email;
    }

    public Integer getE_salary() {
        return e_salary;
    }

    public void setE_salary(Integer e_salary) {
        this.e_salary = e_salary;
    }

    public Integer getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public String getE_name() {
        return e_name;
    }

    public void setE_name(String e_name) {
        this.e_name = e_name;
    }

    public String getE_age() {
        return e_age;
    }

    public void setE_age(String e_age) {
        this.e_age = e_age;
    }

    public String getE_phone() {
        return e_phone;
    }

    public void setE_phone(String e_phone) {
        this.e_phone = e_phone;
    }

    public String getE_createdate() {
        return e_createdate;
    }

    public void setE_createdate(String e_createdate) {
        this.e_createdate = e_createdate;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "e_id=" + e_id +
                ", e_name='" + e_name + '\'' +
                ", e_age='" + e_age + '\'' +
                ", e_phone='" + e_phone + '\'' +
                ", e_createdate='" + e_createdate + '\'' +
                ", s_id=" + s_id +
                ", e_salary=" + e_salary +
                ", e_email='" + e_email + '\'' +
                '}';
    }
}
