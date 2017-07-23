$(function(){
	$("#backBtn").click(function(){
		location.href="./login.jsp";
	});
	$("#signup").click(function(){
		$("#txt1").html("<span id='txt1'></span>");
		$("#txt2").html("<span id='txt2'></span>");
		$("#txt3").html("<span id='txt3'></span>");
		$("#txt4").html("<span id='txt4'></span>");
		$("#txt5").html("<span id='txt5'></span>");
		$("#txt6").html("<span id='txt6'></span>");
		$("#txt7").html("<span id='txt7'></span>");
		if($("#user").val() == ""){
			$("#txt1").html("<div class='alert alert-danger' id='txt1' style='margin-left:70%;margin-top:6%;width:15%;height:7%' role='alert'>请输入用户名 </div>");
			$("#user").focus().select();
			return;
		}
		if($("#pass").val() == ""){
			$("#txt2").html("<div class='alert alert-danger' id='txt2'  style='margin-left:70%;margin-top:9%;width:15%;height:7%' role='alert'>请输入密码</div>");
			$("#pass").focus().select();
			return;
		}
		if($("#pass2").val() == ""){
			$("#txt3").html("<div class='alert alert-danger' id='txt3'  style='margin-left:70%;margin-top:13%;width:15%;height:7%' role='alert'>请输入确认密码</div>");
			$("#pass2").focus().select();
			return;
		}
		if($("#pass2").val() !=$("#pass").val()){
			$("#txt3").html("<div class='alert alert-danger' id='txt4'  style='margin-left:70%;margin-top:13%;width:15%;height:7%' role='alert'>两次输入的密码不一致</div>");
			$("#pass2").focus().select();
			return;
		}
		if($("#address").val() == ""){
			$("#txt4").html("<div class='alert alert-danger' id='txt5'  style='margin-left:70%;margin-top:17%;width:15%;height:7%' role='alert'>请输入收货地址</div>");
			$("#address").focus().select();
			return;
		}
		if($("#gender option:selected").text() != "男" && $("#gender option:selected").text() != "女"){
			$("#txt5").html("<div class='alert alert-danger' id='txt6'  style='margin-left:70%;margin-top:21%;width:15%;height:7%' role='alert'>请选择性别</div>");
			$("#gender").focus().select();
			return;
		}
		if($("#birthday").val() == ""){
			$("#txt6").html("<div class='alert alert-danger' id='txt7'  style='margin-left:70%;margin-top:24%;width:15%;height:7%' role='alert'>请输入出生日期</div>");
			$("#birthday").focus().select();
			return;
		}
		if($("#headerUrl").val() == ""){
			$("#txt7").html("<div class='alert alert-danger' style='margin-left:70%;margin-top:28%;width:15%;height:7%' role='alert'>请选择头像地址</div>");
			$("#headerUrl").focus().select();
			return;
		}
		$("#signupForm").submit();
	});
});