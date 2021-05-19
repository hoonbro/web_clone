<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<link rel="stylesheet" href="/css/ProductList.css">
<script src = "/js/ProductList.js"></script>
<script>
$(document).ready(function() {
	var set = [${likeSet}];
	if(set.length != 0)
		set = set[0].map(function(e){return e.toString()});
  		
	var key = "";
	$(document).on('click', ".page-item", function() {
		let condition = JSON.stringify({
			"word" : $("#word").val(), 
			"pg" : $(this).attr("data-page"), 
			"spp" : 20,
			"start" : 1,
			"data": key
 		});
		$.ajax({
			url: '/restProduct/search',
			type: 'POST',
			contentType: 'application/json;charset=utf-8',
			dataType:'json',
			data: condition,
			success:function(map) {
				makeList(map['products'], set);
				makePageNav(map['navigation']);
      }
    });
   });

	$(document).on('click', ".like_btns", function() {
		if("${userInfo.userId}" == "")
			if(confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?") == true)
				location.href = '/member/login';
			else
				return;
		else{
			let id =  $(this).attr('likeId');
			let data = id.substring(5);
			if($(this).attr('aria-pressed') === 'false'){
				$.ajax({
					url:'/restProduct/setLike/' + data,
					type: 'POST',
					contentType:'application/json;charset=utf-8',
					success:function(){
						set.push(data);
						console.log(set.length);
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
						set.splice(set.indexOf(data),1);
						console.log(set.length);
						$("." + id).attr('aria-pressed', 'false');
						$("." + id).css('color', 'gray');
						$("." + id + "_img_btn").css('background-color', 'white');
					},
					error:function(xhr,status,msg){
						console.log("상태값 : " + status + " Http에러메시지 : "+msg);
					}
				})
			}
		}
	});
	
	$(".orderbyBtn").on('click', function(){
		key = $(this).attr('value'); 
		let condition = JSON.stringify({
			"word" : $("#word").val(), 
			"pg" : $(this).attr("data-page"), 
			"spp" : 20,
			"start" : 1,
			"data" : key,
		});
		$.ajax({
			url: '/restProduct/search',
			type: 'POST',
			contentType:'application/json;charset=utf-8',
			data: condition,
			dataType:'json',
			success:function(map){
				makeList(map['products'], set);
				makePageNav(map['navigation']);
				$(".orderbyBtn").css('color', 'gray');
				$(".orderbyBtn").css('font-weight', 'normal');
				$(".orderbyIcon").css('display', 'none');
				$("#" + key).css('font-weight', '900')
				$("#" + key).css('color', 'black')
				$("#" + key +"_icon").css('display', 'inline');
			},
			error:function(xhr,status,msg){
				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
			}
		});
	});
});

function makeList(products, set){
	$('#productlist').empty();
	
	$(products).each(function (index, item){
		if(set.includes(item.pNum)){
			let str = `
				<li>
				<div class=product>
					<a href="/product/detail?pNum=${'${item.pNum}'}"> <img
						src="${'${item.pUrl}'}">
						<div class="productname">
							<strong>${'${item.pName}'}</strong><br> <strong>${'${item.pPrice}'}원</strong>
						</div>
					</a>
					
						<div class="hide_btn d-flex justify-content-center">
							<button type="button" likeId = "like_${'${item.pNum}'}" class="like_${'${item.pNum}'} like_${'${item.pNum}'}_img_btn like_btns like_img_btn" aria-pressed="true">
								<i class="hide_icon far fa-heart"></i>
							</button>
						</div>
						<div class="like">
							<button type="button" likeId = "like_${'${item.pNum}'}" class="like_${'${item.pNum}'} like_${'${item.pNum}'}_btn like_btns like_btn" aria-pressed="true">
								<i class="far fa-heart"></i>
							</button>
						</div>
				</div>
				</li>
				`;
				$('#productlist').append(str);
		}
		else{
			let str = `
			<li>
			<div class=product>
				<a href="/product/detail?pNum=${'${item.pNum}'}"> <img
					src="${'${item.pUrl}'}">
					<div class="productname">
						<strong>${'${item.pName}'}</strong><br> <strong>${'${item.pPrice}'}원</strong>
					</div>
				</a>
				
					<div class="hide_btn d-flex justify-content-center">
						<button type="button" likeId = "like_${'${item.pNum}'}" class="like_${'${item.pNum}'} like_${'${item.pNum}'}_img_btn like_btns like_img_btn" aria-pressed="false">
							<i class="hide_icon far fa-heart"></i>
						</button>
					</div>
					<div class="like">
						<button type="button" likeId = "like_${'${item.pNum}'}" class="like_${'${item.pNum}'} like_${'${item.pNum}'}_btn like_btns like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
			</div>
			</li>
			`;
			$('#productlist').append(str);
		}
	});
}

function makePageNav(nav) {
	console.log(nav);
	$('#PageNav').empty();
	
	let str = "";
	str += `
		<li class="page-item" data-page="1">
     		<a class="page-link" href="#">처음</a>
   		</li>
	`;
	
	if (nav.startRange) {
		str += `
			<li class="page-item" data-page="1">
     			<a class="page-link" href="#">Previous</a>
    		</li>
    	`;
	} else {
		str += `
			<li class="page-item" data-page="${nav.startPage-1}">
     			<a class="page-link" href="#">Previous</a>
    		</li>
		`;
	}
	
	for (let i=nav.startPage; i<=nav.endPage; i++) {
		if (nav.currentPage == i) {
			str += `
				<li class="page-item active" data-page=`+i+`>
					<a class="page-link" href="#">`+i+`</a>
				</li>
			`;
		} else {
			str += `
				<li class="page-item" data-page=`+i+`>
					<a class="page-link" href="#">`+i+`</a>
				</li>
			`;
		}
	}
	
	if (nav.endRange) {
		str += `
			<li class="page-item" data-page="${nav.endPage}">
     			<a class="page-link" href="#">Next</a>
    		</li>
		`;
	} else {
		str += `
			<li class="page-item" data-page="${nav.endPage+1}">
     			<a class="page-link" href="#">Next</a>
    		</li>
		`;
	}
	
	str += `
		<li class="page-item" data-page="${nav.totalPageCount}">
     		<a class="page-link" href="#">마지막</a>
   		</li>
	`;
	
	$('#PageNav').append(str);
}
</script>
<title>라인 프렌즈</title>
</head>
<body style="width: 1400px; margin: 0 auto">
	<%@ include file="./include/header.jsp"%>
	<div style="width: 1250px; margin: 0 auto">
		<div class="row">
			<div class='ml-3'>
				<h4 class="font-weight-bold">브라운앤프렌즈</h4>
			</div>
			<div class="ml-auto" id="small_ul">
				<ul class="nav justify-content-end mr-4">
					<li><a class="small_li" href="./index.jsp">홈</a></li>
					<li><a class="small_li" href="#"> > 캐릭터</a></li>
					<li class="dropdown " id="small_ul"><a
						class="dropdown-toggle small_li" data-toggle="dropdown"
						style="color: black;"> > <b>브라운앤프렌즈(총 ${productList.size()}개)</b></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="${root}/product/list">브라운앤프렌즈</a> <a
								class="dropdown-item" href="#">BT21</a> <a class="dropdown-item"
								href="#">브롤스타즈</a>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- 정렬 -->
		<div class="mt-3 mb-3">
			<ul class="nav order">
				<li>
					<i id = "pDate_icon" class="orderbyIcon fas fa-check" style = "display: none"></i>
					<button id = "pDate" class = "orderbyBtn" aria-pressed="false" value = "pDate">최신등록순</button>
				</li>
				<li>
					<i id = "pPrice_icon" class="orderbyIcon fas fa-check" style = "display: none"></i>
					<button id = "pPrice" class = "orderbyBtn" aria-pressed="false" value = "pPrice">낮은가격순</button>
				</li>
				<li>
					<i id = "pPrice_desc_icon" class="orderbyIcon fas fa-check" style = "display: none"></i>
					<button id = "pPrice_desc"class = "orderbyBtn" aria-pressed="false" value = "pPrice_desc">높은가격순</button>
				</li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<ul id="productlist">
			<c:forEach var = "item" items = "${productList}">
				<li>
				<div class=product>

					<a href="${root }/product/detail?pNum=${item.pNum}"> <img
						src="${item.pUrl }">
						<div class="productname">
							<strong>${item.pName }</strong><br> <strong>${item.pPrice}원</strong>
						</div>
					</a>
					<c:if test="${likeSet.contains(item.pNum)}">
					<div class="hide_btn d-flex justify-content-center">
						<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_img_btn like_btns like_img_btn" aria-pressed="true">
							<i class="hide_icon far fa-heart"></i>
						</button>
					</div>
					<div class="like">
						<button type="button" likeId = "like_${item.pNum}" class="like_${item.pNum} like_${item.pNum}_btn like_btns like_btn" aria-pressed="true">
							<i class="far fa-heart"></i>
						</button>
					</div>
					</c:if>
					<c:if test="${!likeSet.contains(item.pNum)}">
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
					</c:if>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
	<%@ include file="./include/paging.jsp"%>
	<%@ include file="./include/footer.jsp"%>
</body>
</html>