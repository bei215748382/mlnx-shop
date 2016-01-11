package com.mlnx.shop.entity;

public class TUserExt {

    private Integer userId;

    private String pic;

    private String nickname;

    private Integer integral;
    
    private Double money;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "TUserExt [userId=" + userId + ", pic=" + pic + ", nickname="
				+ nickname + ", integral=" + integral + ", money=" + money
				+ "]";
	}
}