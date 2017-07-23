<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=Utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		
		<title>PetStore-注册界面</title>
		
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
			<link rel="stylesheet" type="text/css" href="styles.css">
			-->
		<!-- 响应式布局 ，约束缩放 -->
		<meta name="viewpoint"
			content="width=device-width,initial-scale=1,maximum-scale=1,user-scalableno=">
		
		<!-- 通过IE采用其支持的最新模式 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/signup.css">
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/signup.js"></script>
</head>

<body>
	<div class="container"
		style="background-image:url('img/back.jpg');backgroud-repeat:no-repeat;background-size: cover;width:100%;height:100%;">
		<a href="signup.jsp">
			<img src="img/logo.jpg" class="img-responsive center-block "
			style="margin-top:1%" alt="图片1">
		</a>
		<div class="signup">
			<div class="signupForm">
				<form id="signupForm" role="form" method="post" action="pet-signup" class="form-horizontal">
					<h3 class="text-center">
						<label>注册</label>
					</h3>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="user">用&nbsp;&nbsp;户&nbsp;&nbsp;名</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="text" class="form-control" name="phoneNumber" id="user"
								placeholder="请输入手机号码/邮箱">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="pass">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="password" class="form-control" name="password" id="pass"
								placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="pass2">确认密码</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="password" class="form-control" name="password2" id="pass2"
								placeholder="请确认密码">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="address">收货地址</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="text" class="form-control" name="address" id="address"
								placeholder="请输入收货地址">
						</div>
					</div>
					<div class="form-group">
						<label for="gender" class="col-lg-3 col-sm-3 col-xs-3">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<select id="gender" class="form-control" name="gender">
								<option class="text-center" value="default">&ndash;
									选择性别 &ndash;</option>
								<option class="text-center" value="男">男</option>
								<option class="text-center" value="女">女</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="birthday">生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="date" class="form-control" id="birthday" name="birthday"
								placeholder="请输入出生日期">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 col-sm-3 col-xs-3" for="headerUrl">头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</label>
						<div class="col-lg-9 col-sm-9 col-xs-9">
							<input type="file" class="form-control" id="headerUrl" name="headerUrl"
								placeholder="请输入头像地址">
						</div>
					</div>
				<div class="col-lg-3 col-sm-3 col-xs-3 col-lg-offset-2 col-sm-offset-2 col-xs-offset-2">
						<button
							id="signup"
							class="btn btn-form-control btn-primary "
							style="margin-top: 3%;" type="button">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册</button>
					</div>
					<div class="col-lg-3 col-sm-3 col-xs-3  col-lg-offset-1 col-sm-offset-1 col-xs-offset-1 ">
						<button id="backBtn"
							class="btn btn-primary"
							style="margin-top: 3%;" type="button">返回登录</button>
					</div>
				</form>
			</div>
		</div>
		<span id="txt1"></span>
		<span id="txt2"></span>
		<span id="txt3"></span>
		<span id="txt4"></span>
		<span id="txt5"></span>
		<span id="txt6"></span>
		<span id="txt7"></span>
		
	</div>
</body>
</html>
