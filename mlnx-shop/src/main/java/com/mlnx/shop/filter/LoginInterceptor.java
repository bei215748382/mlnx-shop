package com.mlnx.shop.filter;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mlnx.shop.util.StringUtil;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		// 如果是登录页面则放行
		if (request.getRequestURI().indexOf("login") >= 0) {
			return true;
		}
		// 如果是注册页面则放行
		if (request.getRequestURI().indexOf("register") >= 0) {
			return true;
		}
		HttpSession session = request.getSession();
		// 如果用户已登录也放行
		if (session.getAttribute(StringUtil.login_user) != null) {
			return true;
		}
		session.setAttribute(StringUtil.url, currentUrl(request));
		// 用户没有登录挑战到登录页面
		request.getRequestDispatcher("/WEB-INF/views/shop/login.jsp").forward(
				request, response);
		return false;
	}

	/**
	 * 当前请求的地址
	 * 
	 * @param request
	 * @return
	 */
	public String currentUrl(HttpServletRequest request) {
		// String path = res.getContextPath();//路径 /mlnx-shop
		StringBuilder uri = new StringBuilder(request.getRequestURI());
		if (request.getQueryString() != null) {
			uri.append("?");
			uri.append(request.getQueryString());
		}

		return uri.toString();
	}
}
