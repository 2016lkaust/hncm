<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="/app/common/jsp/common-head.jsp"%>
<link type="text/css" rel="stylesheet"
	href="/hncm/app/assets/style/login.css" />
<script type="text/javascript" src="/hncm/app/login/login.js"></script>
</head>

<body class="login-page-open">
	<div class="container-fluid login-page">
		<div class="login-main-content">
			<div class="col-md-4 col-md-offset-4 login-panel">
				<h3 class="text-center">用户登录</h3>
				<form>
					<div class="form-group">
						<label for="account">用户名</label> <input type="text"
							class="form-control" id="account" placeholder="请输入用户名">
					</div>
					<div class="form-group">
						<label for="password">密码</label> <input type="password"
							class="form-control" id="password" placeholder="请输入密码">
					</div>
					<div class="form-group text-center">
						<button type="submit"
							class="btn btn-success login-button btn-block"
							onclick="loginClick(event)">登录</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- <s:form action="user_Login">
  		<s:textfield name="account" label="Username" />
  		<s:password name="password" label="Password" />
  		<s:submit />
  	</s:form> -->
</body>
</html>
