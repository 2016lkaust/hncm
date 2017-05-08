<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript" src="/hncm/app/tableList/template/tmp4.js"></script>
<h1>用户列表</h1>
<div class="list-table" id="detailDiv">
  <table class="table table-hover table-bordered" id="detailTab">
  </table>
  <div class="panel panel-default col-md-2">
    <div class="panel-body">
        这是一个基本的面板
    </div>
</div>
  <!--追加翻页代码-->
  <div class="pagination-list">
    <div class="pagination-count pull-left">
      <span>每页</span>
      <select class="perpage" onchange="refreshOrderTable()">
        <option>10</option>
        <option>20</option>
        <option>30</option>
        <option>40</option>
        <option>50</option>
        <option>100</option>
      </select>
      <span>共有</span>
      <span id="total_num"></span>
      <span>条数据</span>
    </div>
    <div class="fanye pull-right" id="pageCtr1" >
    </div>
  </div>
</div>
