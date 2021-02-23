package com.bean;

import org.springframework.web.multipart.MultipartFile;

public class Menu {

    private Integer m_id;
    private String m_name;
    private String m_burden;
    private String m_desc;
    private Float m_price;
    private Integer m_sales;
    private String m_imgname;
    private MultipartFile file;
    private Integer s_id;
    private Integer ca_id;
    private Store store;
    private Category category;

    @Override
    public String toString() {
        return "Menu{" +
                "m_id=" + m_id +
                ", m_name='" + m_name + '\'' +
                ", m_burden='" + m_burden + '\'' +
                ", m_desc='" + m_desc + '\'' +
                ", m_price=" + m_price +
                ", m_sales=" + m_sales +
                ", m_imgname='" + m_imgname + '\'' +
                ", file=" + file +
                ", s_id=" + s_id +
                ", ca_id=" + ca_id +
                ", store=" + store +
                ", category=" + category +
                '}';
    }

    public Integer getM_id() {
        return m_id;
    }

    public void setM_id(Integer m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_burden() {
        return m_burden;
    }

    public void setM_burden(String m_burden) {
        this.m_burden = m_burden;
    }

    public String getM_desc() {
        return m_desc;
    }

    public void setM_desc(String m_desc) {
        this.m_desc = m_desc;
    }

    public Float getM_price() {
        return m_price;
    }

    public void setM_price(Float m_price) {
        this.m_price = m_price;
    }

    public Integer getM_sales() {
        return m_sales;
    }

    public void setM_sales(Integer m_sales) {
        this.m_sales = m_sales;
    }

    public String getM_imgname() {
        return m_imgname;
    }

    public void setM_imgname(String m_imgname) {
        this.m_imgname = m_imgname;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public Integer getCa_id() {
        return ca_id;
    }

    public void setCa_id(Integer ca_id) {
        this.ca_id = ca_id;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
