$(function(){
	function jumpTo(count){
		window.setTimeout(function(){
			count --;
			if(count > 0){
				$("#totalSecond").text(count);
				jumpTo(count);
			}else{
				location.href="./pet-home";
			}
		}, 1000);			
	}	
	jumpTo(3);
});