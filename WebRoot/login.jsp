<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PetStore-登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 响应式布局 ，约束缩放 -->
	<meta name="viewpoint" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalableno=">	
	
	<!-- 通过IE采用其支持的最新模式 -->
	<meta http-equiv="X-UA-Compatible" content = "IE=edge,chrome=1">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
  </head>
  
  <body style="background-image:url('img/back.jpg');backgroud-repeat:no-repeat;background-size: cover;width:100%;height:100%;">
  	<div class="container">
  		
		<a href="login.jsp">
			<img src="img/logo.jpg" class="img-responsive center-block " style="margin-top:4%" alt="图片1">
		</a>
		<div class="login">
			<div class="loginForm">
				<form role="form" action="pet-login" name="loginForm"  method="post" class="form-horizontal">
					<h3 class="text-center"><label>登录</label></h3>
					<div class="form-group">
						<label class="col-lg-2" for="user">用户名</label>
						<div class="col-lg-10">
							<input type="text" name="phoneNumber" class="form-control" id="user" placeholder="请输入用户名">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-2" for="pass">密&nbsp;&nbsp;&nbsp;码</label>
						<div class="col-lg-10">
							<input type="password" name="password" class="form-control" id="pass" placeholder="请输入密码">
						</div>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox">记住密码
						</label>
						<a href="signup.jsp" class="pull-right">前往注册</a><lable class="pull-right">没有账号?</lable>
					</div>
				<button type="button" id="loginBtn" class="btn btn-form-control btn-primary btn-block" style="margin-top: 5%;">登录</button>
			</form>
			</div>
		</div>
	</div>
  </body>
</html>
