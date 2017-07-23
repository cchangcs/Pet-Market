$(function(){
	function jumpTo(count){
		window.setTimeout(function(){
			count --;
			if(count > 0){
				$("#totalSecond2").text(count);
				jumpTo(count);
			}else{
				location.href="./cart-getPetsFromShoppingCart";
			}
		}, 1000);			
	}	
	jumpTo(3);
});