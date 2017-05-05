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
		注册企业数<span class="pull-right"><span id="number">1000</span>家</span>
	</div>
	<div id="total-money" class="col-md-5 col-md-offset-1">
		注册总资金<span class="pull-right"><span id="money">21.12</span>亿元</span>
	</div>
	<div class="col-md-5 info1">
		<div class="panel panel-default">
			<div class="panel-heading">淮南市注册企业分布情况</div>
			<div class="panel-body" id="location" style="width: 600px;height:400px;">面板内容</div>
		</div>
	</div>
	<div class="col-md-5 col-md-offset-1 info2">
		<div class="panel panel-default">
			<div class="panel-heading">淮南市注册资金分布</div>
			<div class="panel-body" id="fund" style="width: 600px;height:400px;">面板内容</div>
		</div>
	</div>
</div>
