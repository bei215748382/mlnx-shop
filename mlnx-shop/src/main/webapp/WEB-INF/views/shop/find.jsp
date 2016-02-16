<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>找回密码</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/find.css" rel="stylesheet"></link>
</head>
<body>
<img src="${ctx}/common/img/shop/find/back.png" alt="back"/><div class="title">找回密码</div>

<form class="tab-pane" id="login" role="form" >
<input type="text"  class="phone-input mg-top-76" placeholder="注册/手机号"  id="phone"/><br/>
<div class="input-group mg-top-15" id="sendBox">
<input type="text" class="bd-right-0" placeholder="发送短信验证码" id="send"/><div class="input-group-addon"><span>发送验证码</span></div>
</div>
<button type="submit" class="btn mg-top-250">下一步</button>
</form>
<script>
	window.onload = function() {
		var phone = document.getElementById("phone");
		phone.onfocus=function(){
			this.className="yellow mg-top-76";
		};
		phone.onblur=function(){
			this.className="normal mg-top-76";
		}
		
		var send = document.getElementById("send");
		var sendBox  = document.getElementById("sendBox");
		send.onfocus=function(){
			sendBox.className="input-group mg-top-15 yellow";
		};
		send.onblur=function(){
			sendBox.className="input-group mg-top-15";
		}
	} 
</script>
</body>
</html>