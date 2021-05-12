$(document).ready(function() {
	$(document).on('click', ".like_btns", function() {
		let id = $(this).attr('likeId');
		$.ajax({
			url:'/restProduct/like/' + id.substring(5),
			type:'GET',
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			success:function(like){
				alert("gd");
				if(like == 1){
					$("." + id).attr('aria-pressed', 'true');
					$("." + id).css('color', '#FF4500');
					$("." + id + "_img_btn").css('color', 'white');
					$("." + id + "_img_btn").css('background-color', '#FF4500');
				}else {
					$("." + id).attr('aria-pressed', 'false');
					$("." + id).css('color', 'gray');
					$("." + id + "_img_btn").css('background-color', 'white');
				}
			},
			error:function(xhr,status,msg){
				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
			}
		});
		
		
/*		if ($("." + id).attr('aria-pressed') === 'false') {
			$("." + id).attr('aria-pressed', 'true');
			$("." + id).css('color', '#FF4500');
			$("." + id + "_img_btn").css('color', 'white');
			$("." + id + "_img_btn").css('background-color', '#FF4500');
		} else {
			$("." + id).attr('aria-pressed', 'false');
			$("." + id).css('color', 'gray');
			$("." + id + "_img_btn").css('background-color', 'white');
		}*/
	});

/*	$(document).on('click', ".like_img_btn", function() {
		if ($(this).attr('aria-pressed') === 'false') {
			$(this).attr('aria-pressed', 'true');
			$(this).css('color', 'white');
			$(this).css('background-color', '#FF4500');
		} else {
			$(this).attr('aria-pressed', 'false');
			$(this).css('color', 'gray');
			$(this).css('background-color', 'white');
		}
	});*/
	
	$(".orderbyBtn").on('click', function(){
		let data = $(this).attr('value'); 
		$.ajax({
			url:'/restProduct/orderby/' + data,
			type:'GET',
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			success:function(products){
				makeList(products);
				$(".orderbyBtn").css('color', 'gray');
				$(".orderbyBtn").css('font-weight', 'normal');
				$(".orderbyIcon").css('display', 'none');
				$("#" + data).css('font-weight', '900')
				$("#" + data).css('color', 'black')
				$("#" + data +"_icon").css('display', 'inline');
			},
			error:function(xhr,status,msg){
				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
			}
		});
	});
});

function makeList(products){
	$('#productlist').empty();
	$(products).each(function (index, item){
		let str = `
		<li>
		<div class=product>
			<a href="/product/detail?pNum=${item.pNum}"> <img
				src="${item.pUrl}">
				<div class="productname">
					<strong>${item.pName}</strong><br> <strong>${item.pPrice}원</strong>
				</div>
			</a>
			<div class="hide_btn d-flex justify-content-center">
				<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_img_btn like_btns like_img_btn" aria-pressed="false">
					<i class="hide_icon far fa-heart"></i>
				</button>
			</div>
			<div class="like">
				<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_btn like_btns like_btn" aria-pressed="false">
					<i class="far fa-heart"></i>
				</button>
			</div>
		</div>
		</li>
		`;
		$('#productlist').append(str);
	});
}