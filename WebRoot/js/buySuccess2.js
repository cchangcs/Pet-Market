$(function(){
	function jumpTo(count){
		window.setTimeout(function(){
			count --;
			if(count > 0){
				$("#totalSecond").text(count);
				jumpTo(count);
			}else{
				var items = $("#items").val();
				location.href="./cart-deleteItem?items="+items;
			}
		}, 1000);			
	}	
	jumpTo(3);
});