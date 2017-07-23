$(function() {
	var p = $("#petP").text().trim();
	var n = $("#petN").text().trim();
	var petPrice = parseInt(p);
	var petNum = parseInt(n);
	var total = petPrice * petNum;
	$("#totalP").text(total);

	$("#deleteBtn").click(function() {
		var spCodesTemp = "";
		$('input:checkbox[name=all]:checked').each(function(i) {
			if (0 == i) {
				spCodesTemp = $(this).val();
			} else {
				spCodesTemp += ("," + $(this).val());
			}
		});
		location.href = "./cart-deleteItem?items=" + spCodesTemp;
	});

	$("#buyBtn").click(function() {

		var spCodesTemp = "";
		$('input:checkbox[name=all]:checked').each(function(i) {
			if (0 == i) {
				spCodesTemp = $(this).val();
			} else {
				spCodesTemp += ("," + $(this).val());
			}
		});
		if(spCodesTemp == ""){
			alert("请选中需要购买的商品");
			return;
		}
		$("#main").css("opacity", "0.3");
		$("#form").show();
		$("#form").css("opacity", "1.0");

	});
	$("#close").click(function() {
		$("#main").css("opacity", "1.0");
		$("#form").css("opacity", "0.0");
		$("#form").hide();
	});
	
	 // 全选
    $("#btnCheckAll").click(function () {
    	 var spCodesTemp = "";
 		$('input:checkbox[name=all]:checked').each(function(i) {
 			if (0 == i) {
 				spCodesTemp = $(this).val();
 			} else {
 				spCodesTemp += ("," + $(this).val());
 			}
 		});
 		if(spCodesTemp ==""){
 			return;
 		}
 		var url = "cart-getTotalPrice";
 		
 		var args = {"items":spCodesTemp,"time":new Date()};
 		$.post(url,args,function(data){
 			$("#totalPrice").html("总价："+data);
 			$("#totalPrice2").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data);			
 			
 		});
    });

    // 全不选
    $("#btnCheckNone").click(function () {
		$("#totalPrice").html("总价：0");
		$("#totalPrice2").html("总价：0");
    });
	
	$('input:checkbox[name=all]').change(function() { 
		var spCodesTemp = "";
		$('input:checkbox[name=all]:checked').each(function(i) {
			if (0 == i) {
				spCodesTemp = $(this).val();
			} else {
				spCodesTemp += ("," + $(this).val());
			}
		});
		if(spCodesTemp == ""){
			$("#totalPrice").html("总价：0");
			$("#totalPrice2").html("总价：0");
			return;
		}
		var url = "cart-getTotalPrice";
		
		var args = {"items":spCodesTemp,"time":new Date()};
		$.post(url,args,function(data){
			$("#totalPrice").html("总价："+data);
			$("#totalPrice2").html("总价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data);			
			
		});
	}); 
	$("#confirmBuyBtn").click(function() {
		var spCodesTemp = "";
		$('input:checkbox[name=all]:checked').each(function(i) {
			if (0 == i) {
				spCodesTemp = $(this).val();
			} else {
				spCodesTemp += ("," + $(this).val());
			}
		});
		location.href = "./buySuccess2.jsp?items="+spCodesTemp;
	});
});