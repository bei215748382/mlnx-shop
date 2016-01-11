package com.mlnx.shop.vo;


import java.util.List;

import com.mlnx.shop.entity.TOrder;
import com.mlnx.shop.entity.TUserCoupon;

public class UserVo {
	
	private int id;// 用户id
	private String pic;// 用户头像
	private String nickname;// 用户昵称
	private double money;// 余额
	private int discount;// 优惠券
	private int score;// 积分
	private List<TOrder> orders;//用户订单列表
	private List<TUserCoupon> coupons;//用户订单列表
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public List<TOrder> getOrders() {
		return orders;
	}

	public void setOrders(List<TOrder> orders) {
		this.orders = orders;
	}

	public List<TUserCoupon> getCoupons() {
		return coupons;
	}

	public void setCoupons(List<TUserCoupon> coupons) {
		this.coupons = coupons;
	}

	@Override
	public String toString() {
		return "UserVo [id=" + id + ", pic=" + pic + ", nickname=" + nickname
				+ ", money=" + money + ", discount=" + discount + ", score="
				+ score + ", orders=" + orders + ", coupons=" + coupons + "]";
	}

}
