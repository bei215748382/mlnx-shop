package com.mlnx.shop.util;

import com.mlnx.shop.util.EnumCollection.ResponseCode;

public class ShopResponse {
	
	private String responseCode;

	private String msg;
	
	public ShopResponse(){
		
	}

	public ShopResponse(ResponseCode response) {
		this.responseCode = response.getCode();
		this.msg = response.getMsg();
	}

	public String getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "ShopResponse [responseCode=" + responseCode + ", msg=" + msg
				+ "]";
	}

}
