package com.mlnx.shop.col;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mlnx.shop.entity.TUser;
import com.mlnx.shop.service.UserService;
import com.mlnx.shop.util.EnumCollection.ResponseCode;
import com.mlnx.shop.util.StringUtil;

@Controller
@RequestMapping(value = "/shop")
public class ShopCol {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "shop/login";
	}

	/**
	 * 登入，登入成功就跳转到主页，并且保存session
	 * 
	 * @param session
	 * @param phone
	 * @param password
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login(HttpSession session, String phone, String password,
			HttpServletResponse response) throws IOException {
		TUser user = new TUser();
		user.setPhone(phone);
		user.setPassword(password);
		Map<String, Object> map = userService.login(user);
		if (((String) map.get(StringUtil.responseCode))
				.endsWith(ResponseCode.LOGIN_SUCCESS.getCode())) {
			Integer userId = (Integer) map.get(StringUtil.responseObj);
			user.setId(userId);
			session.setAttribute(StringUtil.login_user, user);
			String url = (String) session.getAttribute(StringUtil.url);
			response.sendRedirect(url);
		} else {
			response.sendRedirect("shop/login");
		}

	}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// session过期
		session.invalidate();

		return "redirect:login";
	}

	// 注册页面
	@RequestMapping("/register")
	public String register() throws Exception {
		return "admin/register";
	}

	// 注册
	@RequestMapping("/registerUser")
	public String registerUser(TUser user) throws Exception {
		return "admin/login";
	}

	// 商城首页
	@RequestMapping("/index")
	public String index() {
		return "shop/index";
	}

	// 找回密码
	@RequestMapping("/find")
	public String find() {
		return "shop/find";
	}
	
	// 重置密码
	@RequestMapping("/reset")
	public String reset() {
		return "shop/reset";
	}
	
	// 我的订单
	@RequestMapping("/order")
	public String order() {
		return "shop/order";
	}
	
	// 设置
	@RequestMapping("/setting")
	public String setting() {
		return "shop/setting";
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
