<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" rel="stylesheet"
	href="/hncm/app/assets/style/tmp.css" />
<script type="text/javascript"
	src="/hncm/app/tableList/template/tmp4.js"></script>
<h1>用户列表</h1>
<div class="list-table" id="temp4">
	<div class="col-md-12" id="user-group">
		<div class="panel panel-default col-md-3">
			<div class="panel-body">
				账号：<span class="account col-md-offset-1">Admin</span>
				<span class="pull-right">ID:&nbsp;&nbsp;<span class="uid">20</span></span><br> 
				
				用户名：&nbsp;&nbsp;<span class="username">管理员</span><br> 
				状态：<span class="status my-disabled col-md-offset-1"">正常</span><br> 
				注册时间：<span class="createdtime">2016-01-01 12:23</span>
			</div>
		</div>
	</div>
	<!--追加翻页代码-->
	<div class="pagination-list">
		<div class="pagination-count pull-left">
			<span>每页</span> <select class="perpage"
				onchange="refreshOrderTable()">
				<option>12</option>
				<option>24</option>
				<option>36</option>
				<option>48</option>
				<option>60</option>
				<option>96</option>
			</select> <span>共有</span> <span id="total_num"></span> <span>条数据</span>
		</div>
		<div class="fanye pull-right" id="pageCtr1"></div>
	</div>
</div>
