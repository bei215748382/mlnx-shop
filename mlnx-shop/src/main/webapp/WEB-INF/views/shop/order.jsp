<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>我的订单</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<style>
body{
	background-color:#efefef;
}

header{
	height:66px;
	background-color:rgb(22,140,241);
	display:table;
	width:100%;
}
header>div,
header>img
{
	display:table-cell;
	vertical-align:middle;
}
#head-tabs>li{
	padding:15px 0px;
	float:left;
	width:20%;
	text-align:center;
	background-color:white;
}
.wd-20{
	width:20%;
}
.wd-50{
	width:50%;
}
input{
	width:100%;
}
.order-item-img{
	width:80px;
	height:80px;
	float:left;
}
</style>
</head>
<body ng-app="order-app" ng-controller="orderCol">
<header><img src="${ctx}/common/img/back-white.png" alt="back"/><div class="wd-20">我的订单</div><div class="wd-50"><input type="text"  class="" placeholder="搜索" /></div><div class="wd-20">消息</div></header>
<ul class="no-style" id="head-tabs">
<li ng-repeat="tab in tabs"  ng-class="{active:isActiveTab(tab.url)}"  ng-click="onClickTab(tab)"><span class="nav">{{tab.title}}</span></li>
</ul>
<div class="clear"></div>
<div id="mainView">
	<div ng-include="currentTab"></div>
</div>

<script type="text/ng-template" id="all.html">
<div class="bg-white mg-top-15 pd-15">time，待付款</div>
<ul class="no-style">
<li ng-repeat="item in items"  ng-class="{active:isActiveTab(item.url)}">
<img class="order-item-img pd-15" src="{{item.title}}" alt="{{item.title}}">
<div class="pd-25">
<div>{{item.title}}<span class="pull-right">299</span></div>
<div>数量:{{item.number}}<span class="pull-right">实付:￥{{item.price * item.number}}</span></div>
</div>
<div class="clear"></div>
</li>
</ul>
<div class="bg-white pd-15">共{{items.length}}个商品，共计：{{sum}}</div>
<div class="clear"></div>
</script>

<script type="text/ng-template" id="ready_to_pay.html">
<div class="bg-white mg-top-15 pd-15">time,待付款</div>
<ul class="no-style">
<li ng-repeat="item in items"  ng-class="{active:isActiveTab(item.url)}">
<img class="order-item-img pd-15" src="{{item.title}}" alt="{{item.title}}">
<div class="pd-25">
<div>{{item.title}}<span class="pull-right">299</span></div>
<div>数量:{{item.number}}<span class="pull-right">实付:￥{{item.price * item.number}}</span></div>
</div>
<div class="clear"></div>
</li>
</ul>
<div class="bg-white pd-15">共{{items.length}}个商品，共计：{{sum}}</div>
<div class="bg-white pd-15">联系卖家，取消订单，付款</div>
<div class="clear"></div>
</script>

<script type="text/ng-template" id="ready_to_send.html">
<div class="bg-white mg-top-15 pd-15">time,待发货</div>
<ul class="no-style">
<li ng-repeat="item in items"  ng-class="{active:isActiveTab(item.url)}">
<img class="order-item-img pd-15" src="{{item.title}}" alt="{{item.title}}">
<div class="pd-25">
<div>{{item.title}}<span class="pull-right">299</span></div>
<div>数量:{{item.number}}<span class="pull-right">实付:￥{{item.price * item.number}}</span></div>
</div>
<div class="clear"></div>
</li>
</ul>
<div class="bg-white pd-15">共{{items.length}}个商品，共计：{{sum}}</div>
<div class="bg-white pd-15">联系卖家，申请退款</div>
<div class="clear"></div>
</script>

<script type="text/ng-template" id="ready_to_recieve.html">
<div class="bg-white mg-top-15 pd-15">time,卖家已发货</div>
<ul class="no-style">
<li ng-repeat="item in items"  ng-class="{active:isActiveTab(item.url)}">
<img class="order-item-img pd-15" src="{{item.title}}" alt="{{item.title}}">
<div class="pd-25">
<div>{{item.title}}<span class="pull-right">299</span></div>
<div>数量:{{item.number}}<span class="pull-right">实付:￥{{item.price * item.number}}</span></div>
</div>
<div class="clear"></div>
</li>
</ul>
<div class="bg-white pd-15">共{{items.length}}个商品，共计：{{sum}}</div>
<div class="bg-white pd-15">查看物流，申请退款</div>
<div class="clear"></div>
</script>

<script type="text/ng-template" id="ready_to_comment.html">
<div class="bg-white mg-top-15 pd-15">time,交易成功</div>
<ul class="no-style">
<li ng-repeat="item in items"  ng-class="{active:isActiveTab(item.url)}">
<img class="order-item-img pd-15" src="{{item.title}}" alt="{{item.title}}">
<div class="pd-25">
<div>{{item.title}}<span class="pull-right">299</span></div>
<div>数量:{{item.number}}<span class="pull-right">实付:￥{{item.price * item.number}}</span></div>
</div>
<div class="clear"></div>
</li>
</ul>
<div class="bg-white pd-15">共{{items.length}}个商品，共计：{{sum}}</div>
<div class="bg-white pd-15">去评价</div>
<div class="clear"></div>
</script>

<script src="${ctx}/common/plugins/angular/angular.min.js"></script>
<script>
    angular.module('order-app',[]).controller('orderCol',function($scope){ 
        $scope.tabs = [{
            title: '全部',
            url: 'all.html'
        }, {
            title: '待付款',
            url: 'ready_to_pay.html'
        }, {
            title: '待发货',
            url: 'ready_to_send.html'
        }, {
            title: '待收货',
            url: 'ready_to_recieve.html'
        }, {
            title: '待评价',
            url: 'ready_to_comment.html'
        }];
		$scope.currentTab = 'all.html';

		$scope.onClickTab = function (tab) {
			$scope.currentTab = tab.url;
		}
		
		$scope.isActiveTab = function(tabUrl) {
			return tabUrl == $scope.currentTab;
		}
		var data = [{
            title: '商品一',
            url: 'login.html',
			pic:'',
			number:1,
			price:96
        }, {
            title: '商品二',
            url: 'login.html',
			pic:'',
			number:2,
			price:96
        }];
		
		$scope.items = data;
		
		var sum = 0;
		for(var i=0;i<data.length;i++){
			sum+=data[i].number*data[i].price;
		}
		$scope.sum =sum;
    })
</script>
</body>
</html>