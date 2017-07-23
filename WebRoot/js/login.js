$(function(){
	$("#loginBtn").click(function(){
		var user = $("#user").val();
		user = $.trim(user);
		var pass = $("#pass").val();
		pass = $.trim(pass);
		if(user != "" && pass != ""){
			//把当前节点后面的所有font兄弟节点删除
			$("#loginBtn").nextAll("font").remove();
			var url = "pet-login";
			var args = {"phoneNumber":user,"password":pass,"time":new Date()};
			$.post(url,args,function(data){
				//表示不可用
				if(data == "0"){
					$("#loginBtn").after("<font color='red' align='center'>用户名或密码错误</font>");
					return false;
				}else if(data == "1"){
					location.href = "./user-getAll";
				}
			});	
		}else{
			alert("用户名或密码不能为空");
		}
	});
});