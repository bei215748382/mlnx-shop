package com.mlnx.shop.entity;

import java.util.Date;

public class TOrder {

	private Integer id;

    private String name;

    private Date date;

    private String state;

    private String goodsIds;
    
    private int userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getGoodsIds() {
        return goodsIds;
    }

    public void setGoodsIds(String goodsIds) {
        this.goodsIds = goodsIds;
    }

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "TOrder [id=" + id + ", name=" + name + ", date=" + date
				+ ", state=" + state + ", goodsIds=" + goodsIds + ", userId="
				+ userId + "]";
	}
    
}