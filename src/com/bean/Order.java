package com.bean;

public class Order {

    private Integer o_id;
    private String o_no;
    private String o_time;
    private Integer o_state;
    private Store store;
    private Menu menu;
    private Integer m_num;
    private User user;

    public Order() {
    }

    public Order(String o_no, String o_time, Integer o_state, Store store, Menu menu, Integer m_num, User user) {
        this.o_no = o_no;
        this.o_time = o_time;
        this.o_state = o_state;
        this.store = store;
        this.menu = menu;
        this.m_num = m_num;
        this.user = user;
    }

    @Override
    public String toString() {
        return "Order{" +
                "o_id=" + o_id +
                ", o_no='" + o_no + '\'' +
                ", o_time='" + o_time + '\'' +
                ", o_state=" + o_state +
                ", store=" + store +
                ", menu=" + menu +
                ", m_num=" + m_num +
                ", user=" + user +
                '}';
    }

    public Integer getO_id() {
        return o_id;
    }

    public void setO_id(Integer o_id) {
        this.o_id = o_id;
    }

    public String getO_no() {
        return o_no;
    }

    public void setO_no(String o_no) {
        this.o_no = o_no;
    }

    public String getO_time() {
        return o_time;
    }

    public void setO_time(String o_time) {
        this.o_time = o_time;
    }

    public Integer getO_state() {
        return o_state;
    }

    public void setO_state(Integer o_state) {
        this.o_state = o_state;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public Integer getM_num() {
        return m_num;
    }

    public void setM_num(Integer m_num) {
        this.m_num = m_num;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
