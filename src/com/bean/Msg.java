package com.bean;

import java.util.HashMap;
import java.util.Map;

public class Msg {
	
	//状态码-自定义的200:成功，400:失败
	private int code;
	//提示信息
	private String msg;
	//用户返回给浏览器的数据
	private Map<String, Object> map = new HashMap<String, Object>();
	
	//请求成功
	public static Msg success() {
		Msg result = new Msg();
		result.setCode(200);
		result.setMsg("处理成功");
		return result;
	}
	
	//用来存放传递给浏览器的数据
	public Msg add(String key,Object value) {
		this.getMap().put(key, value);
		return this;
	}
	
	//请求失败
	public static Msg fail() {
		Msg result = new Msg();
		result.setCode(400);
		result.setMsg("处理失败");
		return result;
	}
	
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
	
	

}
