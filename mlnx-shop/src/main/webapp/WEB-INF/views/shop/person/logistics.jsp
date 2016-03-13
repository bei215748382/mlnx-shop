<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="common/css/shop/logistics.css" rel="stylesheet"></link>
  <title>物流</title>
  
  
</head>
 <body>
  <header><img src="common/img/back-white.png" />
  <div class="title">物流详情</div>
  </header>
  <div class="Info">
			<div class="Info_left">
			<img id="Info_left_img" src="common/img/info.png"/>
			</div>
			<div class="Info_right">
			  <p class="Info_state">物流跟踪&nbsp<span class="state_color">已签收</span></p>
															
			  <p class="Info_detial">物流公司：圆通快递</br>
				 运单号码：11922933988
			  </p>
			</div>
  </div>
  <div class="blank"></div>
  <div class="main_title">
		物流跟踪
  </div>
  <div class="clearfix"></div>
  <div class="main_info">
		 <ul>
			  <li class="first">
			     
				  <span class="date">2015-12-22</span>
				  <span class="week">周二</span>
				  <span class="time">17:38:13</span></br>
				  <span class="firsttext">商家正通知快递公司揽件</span>
			  </li>
			  <li><span class="date hidden"> 2015-12-22</span>
				  <span class="week hidden">周二</span>
				  <span class="time">18:48:30</span></br>
				  <span class="text">天天快递 洛阳收件员 已揽件</span>
			  </li>
			  <li><span class="date hidden"> 2015-12-22</span>
				  <span class="week hidden">周二</span>
				  <span class="time">20:25:52</span></br>
				  <span class="text">洛阳 已发出</span>
			  </li>
			  <li class="latest"><span class="date hidden"> 2015-12-25</span>
				  <span class="week hidden">周五</span>
				  <span class="time">17:28:07</span></br>
				  <span class="text">已签收,签收人是校园代理点签，感谢使用天天快递，期待再次为您服务</span>
			  </li>
	</ul>
  </div>
 </body>
</html>
