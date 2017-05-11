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
	href="/hncm/app/assets/style/mylogin.css" />
<script type="text/javascript" src="/hncm/app/login/login.js"></script>
</head>

<body>
	<div id="loginWrap">
    <div id="head"><h1>淮南市企业信息管理</h1></div>
    <div id="body">
        <div id="img">
            <img src="/hncm/app/assets/images/left.png"/>
        </div>
        <div id="box">
                <h1>管理登录</h1>
                <img src="/hncm/app/assets/images/user.png" id="user-icn"><img src="/hncm/app/assets/images/password.png" id="pw-icn">
                <input type="text" placeholder="请输入用户名" name="user.name"  id="account" />
                <input type="password" placeholder="请输入密码" name="user.password"  id="password"/>
                <input type="checkbox" name="remember" id="cbox"/><label for="cbox">记住密码</label>
                <input type="submit" value="登录" id="btn" onclick="loginClick(event)"/>
        </div>
    </div>
</div>
</body>
</html>
