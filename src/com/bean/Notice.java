package com.bean;

import org.springframework.web.multipart.MultipartFile;

public class Notice {

    private Integer n_id;
    private String n_title;
    private String n_content;
    private String n_time;
    private String n_imgname;
    private MultipartFile file;
    private Integer s_id;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public Integer getN_id() {
        return n_id;
    }

    public void setN_id(Integer n_id) {
        this.n_id = n_id;
    }

    public String getN_title() {
        return n_title;
    }

    public void setN_title(String n_title) {
        this.n_title = n_title;
    }

    public String getN_content() {
        return n_content;
    }

    public void setN_content(String n_content) {
        this.n_content = n_content;
    }

    public String getN_time() {
        return n_time;
    }

    public void setN_time(String n_time) {
        this.n_time = n_time;
    }

    public String getN_imgname() {
        return n_imgname;
    }

    public void setN_imgname(String n_imgname) {
        this.n_imgname = n_imgname;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }
}
