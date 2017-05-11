<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="/app/common/jsp/common-head.jsp"%>
<link type="text/css" rel="stylesheet"
	href="/hncm/app/assets/style/table.css" />
<script type="text/javascript" src="/hncm/app/tableList/table.js"></script>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<%@ include file="/app/common/jsp/header.jsp"%>
			<div class="col-md-12 prn pln table-wrap">
				<div class="col-md-1 prn pln left-content">
					<ul class="side-menu">
						<li class="active" data-toggle="tooltip" data-placement="right" title="主页"><a href="javsscript:void(0);"
							onclick="goToPage('home')"><i class="glyphicon glyphicon-home"></i></a>
						</li>
						<li data-toggle="tooltip" data-placement="right" title="企业"><a
							onclick="goToPage('enterprise')"><i class="glyphicon glyphicon-list-alt"></i>
						</a>
						</li>
						<li data-toggle="tooltip" data-placement="right" title="分析"><a href="javsscript:void(0);"
							onclick="goToPage('analyse')"><i class="glyphicon glyphicon-signal"></i>
						</a>
						</li>
						<li data-toggle="tooltip" data-placement="right" title="用户"><a href="javsscript:void(0);" onclick="goToPage('user')"><i
								class="glyphicon glyphicon-user"></i>
						</a>
						</li>
					</ul>
				</div>
				<div class="col-md-11 right-content">
					<div class="right-main"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$();
	</script>
</body>
</html>
