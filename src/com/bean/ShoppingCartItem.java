package com.bean;

public class ShoppingCartItem {

	private Integer menuid;
	private String menuname;
	private Float price;
	private Integer sums;

	public ShoppingCartItem(Integer menuid, String menuname, Float price, Integer sums) {
		this.menuid = menuid;
		this.menuname = menuname;
		this.price = price;
		this.sums = sums;
	}

	@Override
	public String toString() {
		return "ShoppingCartItem{" +
				"menuid=" + menuid +
				", menuname='" + menuname + '\'' +
				", price=" + price +
				", sums=" + sums +
				'}';
	}

	public Integer getMenuid() {
		return menuid;
	}

	public void setMenuid(Integer menuid) {
		this.menuid = menuid;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getSums() {
		return sums;
	}

	public void setSums(Integer sums) {
		this.sums = sums;
	}
}
