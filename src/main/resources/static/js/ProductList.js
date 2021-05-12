$(document).ready(function() {
	$(".like_btn").click(function() {
		if ($(this).attr('aria-pressed') === 'false') {
			$(this).attr('aria-pressed', 'true');
			$(this).css('color', '#FF4500');
		} else {
			$(this).attr('aria-pressed', 'false');
			$(this).css('color', 'gray');
		}
	});

	$(".like_img_btn").click(function() {
		if ($(this).attr('aria-pressed') === 'false') {
			$(this).attr('aria-pressed', 'true');
			$(this).css('color', 'white');
			$(this).css('background-color', '#FF4500');
		} else {
			$(this).attr('aria-pressed', 'false');
			$(this).css('color', 'gray');
			$(this).css('background-color', 'white');
		}
	});
	
	$(".orderbyBtn").click(function(){
		let data = $(this).attr('value'); 
		$.ajax({
			url:'${root}/restProduct/orderby/' + data,
			type:'GET',
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			success:function(products){
				makeList(products);
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
			<a href="/product/detail?pNum =  ${'${item.pNum}'}"> <img
				src="${'${item.pUrl}'}">
				<div class="productname">
					<strong>${'${item.pName}'}</strong><br> <strong>${'${item.pPrice}'}원</strong>
				</div>
			</a>
			<div class="hide_btn d-flex justify-content-center">
				<button type="button" class="like_img_btn" aria-pressed="false">
					<i class="hide_icon far fa-heart"></i>
				</button>
			</div>
			<div class="like">
				<button type="button" class="like_btn" aria-pressed="false">
					<i class="far fa-heart"></i>
				</button>
			</div>
		</div>
		</li>
		`;
		$('#productlist').append(str);
	});
}