<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <script type="text/javascript" src="/hncm/app/tableList/template/tmp1.js"></script> --%>
<script type="text/javascript"
	src="/hncm/app/tableList/template/test.js"></script>
<h1>分析页面</h1>
<div class="list-table" id="detailDiv">
  <table class="table table-hover table-bordered" id="detailTab">
  </table>
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
