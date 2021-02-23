package com.dao;

import com.bean.Pinglun;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PinglunMapper {

    public List<Pinglun> getPinglunByMid(Integer mid);

    public List<Pinglun> getPinglunByStore(@Param("listMid") List list);

    public List<Pinglun> querylistByStore(@Param("listMid") List list,String content);

    public void addPinglun(Pinglun pinglun);

}
