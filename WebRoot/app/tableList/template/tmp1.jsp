<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" rel="stylesheet"
	href="/hncm/app/assets/style/tmp.css" />
<script type="text/javascript"
	src="/hncm/app/tableList/template/tmp1.js"></script>
<script type="text/javascript"
	src="/hncm/app/tableList/template/echarts.min.js"></script>
<h1>首页</h1>
<div class="col-md-12" id="temp1">
	<div id="total-number" class="col-md-5">
		<span class="tip">注册企业数</span><span class="num-wrap"><span id="number" class="figure">1000</span>&nbsp;&nbsp;家</span><img src="/hncm/app/assets/images/total-num.png">
	</div>
	<div id="total-money" class="col-md-5 col-md-offset-1">
		<span class="tip">注册总资金</span><span class="num-wrap"><span id="money" class="figure">21.12</span>&nbsp;&nbsp;亿元</span><img src="/hncm/app/assets/images/total-num.png">
	</div>
	<div class="col-md-5 info1">
		<div class="panel panel-default">
			<h1 class="heading">淮南市注册企业分布情况</h1>
			<img src="/hncm/app/assets/images/line.png" class="line">
			<div class="panel-body" id="location" style="width: 600px;height:400px;">面板内容</div>
		</div>
	</div>
	<div class="col-md-5 col-md-offset-1 info2">
		<div class="panel panel-default">
			<h1 class="heading">淮南市注册资金分布</h1>
			<img src="/hncm/app/assets/images/line.png" class="line">
			<div class="panel-body" id="fund" style="width: 600px;height:400px;">
			面板内容</div>
		</div>
	</div>
</div>
