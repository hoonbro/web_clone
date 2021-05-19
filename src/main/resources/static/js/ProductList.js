function like(id, aria) {
	let data = id.substring(5);
	if(aria === 'false'){
		$.ajax({
			url:'/restProduct/setLike/' + data,
			type: 'POST',
			contentType:'application/json;charset=utf-8',
			success:function(){
				$("." + id).attr('aria-pressed', 'true');
				$("." + id).css('color', '#FF4500');
				$("." + id + "_img_btn").css('color', 'white');
				$("." + id + "_img_btn").css('background-color', '#FF4500');
			},
			error:function(xhr,status,msg){
				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
			}
		})
	}
	else {
		$.ajax({
			url:'/restProduct/deleteLike/' + data,
			type: 'DELETE',
			contentType:'application/json;charset=utf-8',
			success:function(){
				$("." + id).attr('aria-pressed', 'false');
				$("." + id).css('color', 'gray');
				$("." + id + "_img_btn").css('background-color', 'white');
			},
			error:function(xhr,status,msg){
				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
			}
		})
	}
};
//function makeList(products){
//	$('#productlist').empty();
//	$(products).each(function (index, item){
//		let str = `
//		<li>
//		<div class=product>
//			<a href="/product/detail?pNum=${item.pNum}"> <img
//				src="${item.pUrl}">
//				<div class="productname">
//					<strong>${item.pName}</strong><br> <strong>${item.pPrice}원</strong>
//				</div>
//			</a>
//			
//				<div class="hide_btn d-flex justify-content-center">
//					<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_img_btn like_btns like_img_btn" aria-pressed="true">
//						<i class="hide_icon far fa-heart"></i>
//					</button>
//				</div>
//				<div class="like">
//					<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_btn like_btns like_btn" aria-pressed="true">
//						<i class="far fa-heart"></i>
//					</button>
//				</div>
//		</div>
//		</li>
//		`;
//		$('#productlist').append(str);
//	});
//}