package com.mlnx.shop.entity;

public class TUserCoupon {

    private Integer id;

    private Integer userId;

    private Integer couponId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

	@Override
	public String toString() {
		return "TUserCoupon [id=" + id + ", userId=" + userId + ", couponId="
				+ couponId + "]";
	}
    
}