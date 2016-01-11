package com.mlnx.shop.entity;

import java.util.Date;

public class TGoods {

    private Integer id;

    private Date date;

    private Double price;

    private String name;

    private String pic;

    private String type;

    private Integer store;

    private Integer classifyId;

    private Integer populartiy;

    private Integer sales;

    private Integer activitiyId;

    private String description;
    
    private Integer valid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getStore() {
        return store;
    }

    public void setStore(Integer store) {
        this.store = store;
    }

    public Integer getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(Integer classifyId) {
        this.classifyId = classifyId;
    }

    public Integer getPopulartiy() {
        return populartiy;
    }

    public void setPopulartiy(Integer populartiy) {
        this.populartiy = populartiy;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public Integer getActivitiyId() {
        return activitiyId;
    }

    public void setActivitiyId(Integer activitiyId) {
        this.activitiyId = activitiyId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

	public Integer getValid() {
		return valid;
	}

	public void setValid(Integer valid) {
		this.valid = valid;
	}

	@Override
	public String toString() {
		return "TGoods [id=" + id + ", date=" + date + ", price=" + price
				+ ", name=" + name + ", pic=" + pic + ", type=" + type
				+ ", store=" + store + ", classifyId=" + classifyId
				+ ", populartiy=" + populartiy + ", sales=" + sales
				+ ", activitiyId=" + activitiyId + ", description="
				+ description + ", valid=" + valid + "]";
	}
}