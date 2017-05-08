<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" rel="stylesheet"
	href="/hncm/app/assets/style/tmp.css" />
<script type="text/javascript"
	src="/hncm/app/tableList/template/tmp2.js"></script>
<h1 id="title">
	注册企业界面
	<button class="btn btn-sm" data-toggle="modal" id="add">+&nbsp;新增</button>
</h1>
<div class="list-table" id="detailDiv">
	<table class="table table-hover table-bordered" id="detailTab">
	</table>
	<!--追加翻页代码-->
	<div class="pagination-list">
		<div class="pagination-count pull-left">
			<span>每页</span> <select class="perpage"
				onchange="refreshOrderTable()">
				<option>10</option>
				<option>20</option>
				<option>30</option>
				<option>40</option>
				<option>50</option>
				<option>100</option>
			</select> <span>共有</span> <span id="total_num"></span> <span>条数据</span>
		</div>
		<div class="fanye pull-right" id="pageCtr1"></div>
	</div>
	<!-- 点击查看模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3 class="modal-title" id="myModalLabel">注册企业信息</h3>
				</div>
				<div class="modal-body">
					<div>
						<label for="id">企业编号：</label><span id="id">12345678</span>
					</div>
					<div style="margin-top:20px;">
						<label for="name">企业名称：</label><input type="text" id="name" /><label
							for="type" class="col-md-offset-1">企业类型：</label><select id="type" />
					</div>
					<div style="margin-top:20px;">
						<label for="corporation">企业法人：</label><input type="text"
							id="corporation" /><label for="tel" class="col-md-offset-1">联系电话：</label><input
							type="text" id="tel" />
					</div>
					<div style="margin-top:20px;">
						<label for="captial">注册资金：</label><input type="text" id="captial" /><label
							for="time" class="col-md-offset-1">成立时间：</label><input
							type="text" id="time" />
					</div>
					<div style="margin-top:20px;">
						<label>经营地址：</label> <select id="city"></select> <select id="area"
							style="margin:0 10px;"></select> <input type="text"
							value="朝阳中路瑞鑫大厦办公602" id="address" />
					</div>
					<div style="margin-top:20px;">
						<label for="scope" class="pull-left">经营范围：</label>
						<textarea id="scope" rows="6" class="col-md-10" />
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="modal-footer center-block">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="submit">确定</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<div id="myAlert" class="alert alert-success" hidden>
		<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>操作成功！</strong>
	</div>
</div>