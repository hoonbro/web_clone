$(function() {
		var price1 = "";
		var cnt ="";
		$('#plusbtn').on('click',function() {
			
			cnt = Number($('#prod_cnt').text()) +1;
			console.log(cnt); 
			$('#prod_cnt').empty();
			$('#prod_cnt').append(cnt);
			
			price1 = Number($('#price1').text()) + Number($('#price1').text()) / (cnt-1);
			$('#price1').empty();
			$('#price1').append(price1);
			
			$('#prod_cnt2').empty();
			$('#prod_cnt2').append("총 수량").append(cnt).append("개 | ");
			
			$('#price2').empty();
			$('#price2').append(price1).append("원");
		});
		
		$('#minusbtn').on('click',function() {
			cnt = Number($('#prod_cnt').text()) -1;
			
			if(cnt >0) {
				$('#prod_cnt').empty();
				$('#prod_cnt').append(cnt);
				
				price1 = Number($('#price1').text()) - Number($('#price1').text()) / (cnt+1);
				$('#price1').empty();
				$('#price1').append(price1);
				$('#prod_cnt2').empty();
				$('#prod_cnt2').append("총 수량").append(cnt).append("개  | ");
				$('#price2').empty();
				$('#price2').append(price1).append("원");
			}
			
		});
		
	});