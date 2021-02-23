package com.bean;

public class Pinglun {
    private Integer p_id;
    private String p_content;
    private String p_time;
    private String m_id;
    private User user;
    private Menu menu;

    @Override
    public String toString() {
        return "Pinglun{" +
                "p_id=" + p_id +
                ", p_content='" + p_content + '\'' +
                ", p_time='" + p_time + '\'' +
                ", m_id='" + m_id + '\'' +
                ", user=" + user +
                ", menu=" + menu +
                '}';
    }

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public Integer getP_id() {
        return p_id;
    }

    public void setP_id(Integer p_id) {
        this.p_id = p_id;
    }

    public String getP_content() {
        return p_content;
    }

    public void setP_content(String p_content) {
        this.p_content = p_content;
    }

    public String getP_time() {
        return p_time;
    }

    public void setP_time(String p_time) {
        this.p_time = p_time;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }
}
