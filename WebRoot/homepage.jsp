<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>PetStore-我的主页</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style.css" rel="css/details.css">
<script src="js/details.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
<script type="text/javascript" src="js/homepage.js"></script>
</head>
<body
	style="background-image:url('img/back.jpg');backgroud-repeat:no-repeat;background-size: cover;width:100%;height:100%;">
	<div class="container" id="main">
		<div class="row">

			<div class="col-md-12">

				<ul class="nav nav-tabs">
					<div class="col-lg-2 col-md-2" style="margin-top:3%">
						<img src="img/logo.jpg" class="img-responsive img-circle"
							alt="picture1">
					</div>
					<li style="margin-top:10%;"><a href="user-getAll">宠物主页</a></li>
					<li class="active" style="margin-top:10%;"><a href="pet-home">我的主页</a>
					<li style="margin-top:10%;"><a href="login.jsp">登录</a>
					</li>

				</ul>
			</div>
		</div>
		<hr style="height:10px;border:none;border-top:10px groove ;" />

		<div class="row clearfix">
			<div class="col-md-12 column">
				<h2>个人信息</h2>
				<br>
				<div class="col-lg-offset-1 col-sm-offset-1">
					<p>
						<font size=4>电话号码：&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.phoneNumber}</font>
					</p>
					<p>
						<font size=4>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.gender}</font>
					</p>
					<p>
						<font size=4>生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日：&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate
								value="${sessionScope.user.birthday }" pattern="yyyy-MM-dd" /> </font>
					</p>
					<p>
						<font size=4>收货地址：&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.address}</font>
					</p>
					<br>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<h2>我的购物车</h2>
				<div class="row">
				
					<div class="col-md-12">
						<div class="col-md-3 col-lg-offset-1 col-sm-offset-1">
							<label>宠物</label>
						</div>
						<div class="col-md-1">
							<label>名称</label>
						</div>
						<div class="col-md-2" style="text-align:center;">
							<label>单价</label>
						</div>
						<div class="col-md-1" style="text-align:center;">
							<label>数量</label>
						</div>
						<div class="col-md-2" style="text-align:center;">
							<label>小计</label>
						</div>
						
						<div class="col-md-2">
						<a id="btnCheckAll" onclick="ck(true)" style="cursor:pointer;">全选</a>&nbsp;&nbsp;<a  onclick="ck(false)" id="btnCheckNone" style="cursor:pointer;">取消全选</a>	
						
							<script type="text/javascript">
								function ck(b) {
									var input = document
											.getElementsByTagName("input");
									for ( var i = 0; i < input.length; i++) {
										if (input[i].type == "checkbox")
											input[i].checked = b;
									}
								}
							</script>
						</div>
					</div>
				</div>
				<br>
				
				<s:if test="#request.cartPets == null || #request.cartPets.size() == 0">
					购物车中没有任何商品~ 
				</s:if>
				<s:else>
					<s:iterator value="#request.cartPets">
				<div class="row">
					<div class="col-md-12">
						
						<div class="col-md-3 col-lg-offset-1 col-sm-offset-1" >
							<a href="user-getPetDetail?petId=${petId }"><img src="${pictures[0].picUrl }" style="width:220px;height:220px"></a>
						</div>
						<div class="col-md-1" style="margin-top:5%;">
							<h3>${name }</h3>
						</div>
						<div class="col-md-2" style="text-align:center;margin-top:5%;">
							<h3>${price }</h3>
						</div>
						<div class="col-md-1" style="text-align:center;margin-top:5%;">
									<h3 >${shoppingCart.number }</h3>
						</div>
						<div class="col-md-2" style="text-align:center;margin-top:5%;">
							<h3>${price  *shoppingCart.number }</h3>
						</div>
						<div class="col-md-1" style="margin-top:6.5%;" >
							<input name="all" type="checkbox" value="${petId }" />
						</div>
					</div>
					<div class="col-md-12" style="margin-top:3%;"></div>
				</div>
				</s:iterator>
			</s:else>
				<br> <br> 
					<div class="row">
					<div class="col-md-12">
						<div class="col-md-9"></div>
						<div class="col-md-3" >
							<h4 id="totalPrice">总价：0</h4>
						</div>
					</div>
				</div>
				<br>
				<br> <br>
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-9"></div>
						<div class="col-md-1" >
							<button type="button" id="deleteBtn" class="btn btn-warning btn-lg">删除</button>
						</div>
						<div class="col-md-1">
							<button type="button" id="buyBtn" class="btn btn-warning btn-lg">购买</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr style="height:10px;border:none;border-top:10px groove" />
		<div class="row">
			<div class="col-md-12">
				<p align="center">
					<font size=3> <strong>&copy;2017(软件工程期末作业)</strong> </font>
				</p>
			</div>
		</div>
	</div>
	<div class="modal-dialog" id="form"
		style="display:none;position: absolute;top:140%;left: 50%;transform:translate(-50%,-50%);">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close"
					id="close" type="button">
					<div class="glyphicon glyphicon-remove"></div>
				</button>
				<h4 class="modal-title">购买商品</h4>
			</div>
			<div class="modal-body">
				<form name="publishForm" action="" method="post"
					class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label>收货地址：
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.address
								}</label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label id="totalPrice2">0</label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-5 col-lg-10">
							<button type="button" id="confirmBuyBtn"
								class="btn btn-primary" style="margin-top:5px;">确认购买</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>