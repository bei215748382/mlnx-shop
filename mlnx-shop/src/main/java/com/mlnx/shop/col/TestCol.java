package com.mlnx.shop.col;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mlnx.shop.entity.TUser;

@Controller
@RequestMapping(value = "/test")
public class TestCol {
	
	@RequestMapping("/index")
	public String index() {
		return "test";
	}
	
	@RequestMapping("/json")
	@ResponseBody
	public TUser json() {
		TUser user = new TUser();
		user.setPhone("12314545");
		user.setPassword("121234");
		return user;

	}
}
