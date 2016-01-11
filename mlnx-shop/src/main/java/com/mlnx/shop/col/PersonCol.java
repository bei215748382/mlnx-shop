package com.mlnx.shop.col;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mlnx.shop.entity.TCoupon;
import com.mlnx.shop.entity.TGoods;
import com.mlnx.shop.entity.TOrder;
import com.mlnx.shop.entity.TUser;
import com.mlnx.shop.entity.TUserAddress;
import com.mlnx.shop.service.UserService;
import com.mlnx.shop.util.StringUtil;
import com.mlnx.shop.vo.UserVo;

/**
 * 在进入这个url之前会经过loginInterceptor拦截器，验证用户是否登入
 * 
 * @author bwh
 * 
 */
@Controller
@RequestMapping(value = "/person")
public class PersonCol {

	@Autowired
	private UserService userService;

	// 个人中心
	@RequestMapping("/index")
	public ModelAndView person_center(HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/person/person");
		TUser user = (TUser) session.getAttribute(StringUtil.login_user);
		UserVo u = userService.findByPhone(user.getPhone());
		mav.addObject("userVo", u);
		return mav;
	}

	// 查看个人搜藏
	@RequestMapping(value = "collection")
	public ModelAndView findCollection(HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/person/collection");
		TUser user = (TUser) session.getAttribute(StringUtil.login_user);
		List<TGoods> collections = userService
				.findCollectionsById(user.getId());
		mav.addObject("collections", collections);
		return mav;
	}
	
	// 查看个人优惠券
	@RequestMapping(value = "coupon")
	public ModelAndView findCoupon(HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/person/coupon");
		TUser user = (TUser) session.getAttribute(StringUtil.login_user);
		List<TCoupon> coupons = userService
				.findCouponsById(user.getId());
		mav.addObject("coupons", coupons);
		return mav;
	}
	
	// 查看个人订单
	@RequestMapping(value = "order")
	public ModelAndView findOrders(HttpSession session,String state) {
		ModelAndView mav = new ModelAndView("shop/person/order");
		TUser user = (TUser) session.getAttribute(StringUtil.login_user);
		TOrder order = new TOrder();
		order.setUserId(user.getId());
		order.setState(state);
		List<TOrder> orders = userService
				.findOrdersByIdAndState(order);
		mav.addObject("orders", orders);
		return mav;
	}
	
	// 查看个人地址
	@RequestMapping(value = "address")
	public ModelAndView findAddress(HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/person/address");
		TUser user = (TUser) session.getAttribute(StringUtil.login_user);
		List<TUserAddress> addresses = userService
				.findAddressesById(user.getId());
		mav.addObject("addresses", addresses);
		return mav;
	}
}
