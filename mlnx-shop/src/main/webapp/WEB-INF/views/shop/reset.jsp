<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>修改密码</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/find.css" rel="stylesheet"></link>
</head>
<body>
<img src="${ctx}/common/img/shop/find/back.png" alt="back"/><div class="title">修改密码</div>

<form class="tab-pane" id="login" role="form" >
<input type="text"  class="phone-input mg-top-76" placeholder="原密码" /><br/>
<input type="text"  class="phone-input mg-top-15" placeholder="新密码" /><br/>
<input type="text"  class="phone-input mg-top-15" placeholder="确认密码" /><br/>
<button type="submit" class="btn mg-top-250">确&nbsp;认</button>
</form>

<script>
	window.onload = function() {
		var elements = document.getElementsByTagName("input");
		for(var i = 0;i < elements.length;i++){
			if(i==0){
				elements[i].onfocus=function(){
					this.className="yellow mg-top-76";
					
				};
				elements[i].onblur=function(){
					this.className="normal mg-top-76";
				}
			} else {
				elements[i].onfocus=function(){
					this.className="yellow mg-top-15";
				};
				elements[i].onblur=function(){
					this.className="normal mg-top-15";
				}
			}
		}
	}
</script>
</body>
</html>