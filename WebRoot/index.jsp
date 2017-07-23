<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>PetStore-宠物页面</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</head>
<body
	style="background-image:url('img/back.jpg');backgroud-repeat:no-repeat;background-size: cover;width:100%;height:100%;">
	<div class="container">
		<div class="container-fluid">

			<div class="row">

				<div class="col-md-12">

					<ul class="nav nav-tabs">
						<div class="col-lg-2 col-md-2" style="margin-top:3%">
							<img src="img/logo.jpg" class="img-responsive img-circle"
								alt="picture1">
						</div>
						<li class="active" style="margin-top:10%;"><a
							href="user-getAll">宠物主页</a></li>
						<li style="margin-top:10%;"><a href="pet-home">我的主页</a>
						<li style="margin-top:10%;"><a href="login.jsp">登录</a>
						</li>

					</ul>
				</div>
			</div>
			<hr style="height:10px;border:none;border-top:10px groove ;" />
			<s:if test="#request.pets == null || #request.pets.size() == 0">
				没有任何宠物信息 
			</s:if>
			<s:else>
				<s:iterator value="#request.pets">
					<s:if test="%{#status.modules(3) == 0}">
						<div class="row" style="text-align:center;">
					</s:if>
					<div class="col-lg-4 col-sm-4 col-xs-6">
						<div class="thumbnail">
							<a  href="user-getPetDetail?petId=${petId }"><img src="${pictures[0].picUrl }"
								style="width:300px;height:200px;"></a>
							<h2 class="text-center">${ name}</h2>
							<p class="text-center">价格：&nbsp;${price }</p>
							<p>
								<a class="btn center-block"  href="user-getPetDetail?petId=${petId }">查看详情 »</a>
							</p>
						</div>
					</div>
					<s:if test="%{#status.modules(3) == 0}">
						</div>
					</s:if>
				</s:iterator>
			</s:else>
			<br>

			<div class="row">
				<div class="col-md-12">
					<p align="center">
						<font size=3> <strong>&copy;2017(软件工程期末作业)</strong> </font>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
