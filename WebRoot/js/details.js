$(function() {
		$("#form").css("opacity","0.0");
		$("#plus").click(function() {
            var n = $("#number").val();
            var max = $("#num").val();
            var num = parseInt(n) + 1;
            num = num > max?max:num;
            if (num == 0) {
                alert("cc");
            }
            $("#number").val(num);
        });
        $("#minis").click(function() {
            var n = $("#number").val(),
                num = parseInt(n) - 1; // 小于1的时候，默认取值为1
            num = num < 1 ? 1 : num;
            $("#number").val(num);
        });
        $("#plus2").click(function() {
            var n = $("#petNum1").val();
            var max = $("#num").val();
            var num = parseInt(n) + 1;
            num = num > max?max:num;
            if (num == 0) {
                alert("cc");
            }
            $("#petNum1").val(num);
            var p =  $("#petPrice").text().trim();
        	price = parseInt(p);
        	var total = price * num;
        	$("#totalPrice").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	
        });
        $("#minis2").click(function() {
            var n = $("#petNum1").val(),
                num = parseInt(n) - 1; // 小于1的时候，默认取值为1
            num = num < 1 ? 1 : num;
            $("#petNum1").val(num);
            var p =  $("#petPrice").text().trim();
        	price = parseInt(p);
        	var total = price * num;
        	$("#totalPrice").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	
        });   
        $("#plus3").click(function() {
            var n = $("#petNum2").val();
            var max = $("#num").val();
            var num = parseInt(n) + 1;
            num = num > max?max:num;
            if (num == 0) {
                alert("cc");
            }
            $("#petNum2").val(num);
            var p =  $("#petPrice2").text().trim();
        	price = parseInt(p);
        	var total = price * num;
        	$("#totalPrice2").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	
        });
        $("#minis3").click(function() {
            var n = $("#petNum2").val(),
                num = parseInt(n) - 1; // 小于1的时候，默认取值为1
            num = num < 1 ? 1 : num;
            $("#petNum2").val(num);
            var p =  $("#petPrice2").text().trim();
        	price = parseInt(p);
        	var total = price * num;
        	$("#totalPrice2").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	
        });  
        $("#buyBtn").click(function(){
        	$("#petNum1").val($("#number").val());
        	var p =  $("#petPrice").text().trim();
        	var n = $("#number").val().trim();
        	price = parseInt(p);
        	number = parseInt(n); 
        	var total = price * number;
        	$("#totalPrice").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	var url = "pet-validateUser";
			var args = {"time":new Date()};
			$.post(url,args,function(data){
				//表示不可用
				if(data == "1"){
					$("#main").css("opacity","0.3"); 
		        	$("#form").show();
		        	$("#form").css("opacity","1.0");
					return false;
				}else if(data == "0"){
					location.href = "./login.jsp";
				}
			});	
        });
        $("#close").click(function(){
        	$("#main").css("opacity","1.0"); 
        	$("#form").css("opacity","0.0");
        	$("#form").hide();
        });
        $("#addBtn").click(function(){
        	$("#petNum2").val($("#number").val());
        	var p =  $("#petPrice2").text().trim();
        	var n = $("#number").val().trim();
        	price = parseInt(p);
        	number = parseInt(n); 
        	var total = price * number;
        	$("#totalPrice2").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+total);
        	var url = "pet-validateUser";
			var args = {"time":new Date()};
			$.post(url,args,function(data){
				//表示不可用
				if(data == "1"){
					$("#main").css("opacity","0.3"); 
		        	$("#form2").show();
		        	$("#form2").css("opacity","1.0");
					return false;
				}else if(data == "0"){
					location.href = "./login.jsp";
				}
			});	
        });
        $("#close2").click(function(){
        	$("#main").css("opacity","1.0"); 
        	$("#form2").css("opacity","0.0");
        	$("#form2").hide();
        });
        $("#confirmBuyBtn").click(function(){
        	location.href = "./buySuccess.jsp";
        });
});