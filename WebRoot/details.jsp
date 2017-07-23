<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>PetStore-详情页面</title>

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
<script type="text/javascript" src="js/details.js"></script>
</head>
<body
	style="background-image:url('img/back.jpg');backgroud-repeat:no-repeat;background-size: cover;width:100%;height:100%;">
	<div class="container" id="main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<ul class="nav nav-tabs">
						<div class="col-lg-2 col-md-2" style="margin-top:3%">
							<img src="img/logo.jpg" class="img-responsive img-circle"
								alt="picture1">
						</div>
						<li style="margin-top:10%;"><a href="user-getAll">宠物主页</a>
						</li>
						<li style="margin-top:10%;"><a href="pet-home">我的主页</a>
						<li class="active" style="margin-top:10%;"><a
							href="user-getPetDetail?petId=${requestScope.pet.petId }">商品详情</a>
						<li style="margin-top:10%;"><a href="login.jsp">登录</a>
						</li>

					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">

					<div class="col-md-1"></div>
					<div class="col-md-5" style="text-align:center;margin-top:5%;">
						<div id="myCarousel" class="carousel slide">
							<!-- 轮播（Carousel）指标 -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<!-- 轮播（Carousel）项目 -->
							<div class="carousel-inner">
								<div class="item active" style="width:433px;height:350px">
									<img src="${requestScope.pet.pictures[0].picUrl }"
										style="width:433px;height:350px" alt="First slide">
								</div>
								<div class="item" style="width:433px;height:350px">
									<img src="${requestScope.pet.pictures[1].picUrl }"
										style="width:433px;height:350px" alt="Second slide">
								</div>
								<div class="item" style="width:433px;height:350px">
									<img src="${requestScope.pet.pictures[2].picUrl }"
										style="width:433px;height:350px" alt="Third slide">
								</div>
							</div>
							<!-- 轮播（Carousel）导航 -->
							<a class="carousel-control left" href="#myCarousel"
								data-slide="prev">&lsaquo; </a> <a
								class="carousel-control right" href="#myCarousel"
								data-slide="next">&rsaquo; </a>
						</div>
						
						<h3><label>${requestScope.pet.name }</label></h3>
					</div>
					<div class="col-md-5">
						<div style="padding-left:20%">
							<h2 class="text-center">${name }</h2>
							<br>
							<p>
								<font size=4>价格：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.pet.price
									}</font>
							</p>
							<br>
							<p>
								<font size=4>
									<div class="row" style="margin-left:-9%">
										<span class="col-lg-12 col-md-12">
											<div class="col-lg-3 col-md-3">数量：</div> <span
											class="col-lg-1 col-md-1" id="minis">-</span> <input
											id="number" class="col-lg-6 col-md-6" type="text" value="1" />
											<input type="hidden" id="num"
											value="${requestScope.pet.number}"> <span
											class="col-lg-1 col-md-1" id="plus">+</span> </span>
									</div> </font>
							</p>
							<br>
							<p>
								<font size=4>毛色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.pet.coatColour}</font>
							</p>
							<br>
							<p>
								<font size=4>体型：
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.pet.shape
									}</font>
							</p>
							<br>
							<p>
								<font size=4>体重：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${requestScope.pet.weight }</font>
							</p>
							<br>
							<p>
								<font size=4>描述：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${requestScope.pet.introduction }</font>
							</p>
							<br>
							<!-- 标准的按钮 -->
							<div class="row">
								<button type="button" id="buyBtn"
									class="btn btn-warning btn btn-primary btn-lg btn-block">立即购买</button>
								<button type="button" id="addBtn"
									class="btn btn-warning btn btn-primary btn-lg btn-block">加入购物车</button>
							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
			<br> <br>
			<hr style="height:10px;border:none;border-top:10px groove ;" />
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="text-align:center;">
					<img src="img/info1.jpg"> <img src="img/info2.jpg"> <img
						src="img/info3.jpg"> <img src="img/info4.jpg"> <img
						src="img/info5.jpg"> <img src="img/info6.jpg">
				</div>
				<div class="col-md-1"></div>
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
	</div>
	<div class="modal-dialog" id="form"
		style="display:none;position: absolute;top: 50%;left: 50%;transform:translate(-50%,-50%);">
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
							<img src="${requestScope.pet.pictures[0].picUrl }"
										style="width:433px;height:350px" alt="First slide">
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label>收货地址：
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.address
								}</label>
						</div>
					</div>

					<div class="form-group">
						<label >
							<span class="col-lg-12 col-md-12" style="margin-left:30%">
							<div class="col-lg-3 col-md-3">数量：</div> <span
							class="col-lg-1 col-md-1" id="minis2">-</span> <input id="petNum1"
							class="col-lg-6 col-md-6" type="text" value="1" /> 
							<span class="col-lg-1 col-md-1" id="plus2">+</span> </span>
						</label>
					</div>
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label>单价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="petPrice">${requestScope.pet.price}</span></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label id="totalPrice">总价：</label>
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
	<div class="modal-dialog" id="form2"
		style="display:none;position: absolute;top: 50%;left: 50%;transform:translate(-50%,-50%);">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close"
					id="close2" type="button">
					
					<div class="glyphicon glyphicon-remove"></div>
				</button>
				<h4 class="modal-title">加入购物车</h4>
			</div>
			<div class="modal-body">
				<form name="shoppingcart" action="cart-addToShoppingCart" method="post"
					class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<input type="hidden" name="petId" value="${requestScope.pet.petId}">
							<img src="${requestScope.pet.pictures[0].picUrl }"
										style="width:433px;height:350px" alt="First slide">
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label>收货地址：
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.address
								}</label>
						</div>
					</div>

					<div class="form-group">
						<label >
							<span class="col-lg-12 col-md-12" style="margin-left:30%">
							<div class="col-lg-3 col-md-3">数量：</div> <span
							class="col-lg-1 col-md-1" id="minis3">-</span> <input id="petNum2"
							class="col-lg-6 col-md-6" type="text" value="1" name="petNum"/> 
							<span class="col-lg-1 col-md-1" id="plus3">+</span> </span>
						</label>
					</div>
					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label>单价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="petPrice2">${requestScope.pet.price}</span></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-12 col-sm-12 text-center">
							<label id="totalPrice2">总价：</label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-5 col-lg-10">
							<button type="submit" id="confirmAddBtn"
								class="btn btn-primary" style="margin-top:5px;">加入购物车</button>
						</div>
					</div>
				</form>
			</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>