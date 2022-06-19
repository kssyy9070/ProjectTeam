<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/main.css">
</head>
<body>
<body>
	<%@include file="../includes/header.jsp"%>
	<div id="page-wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="adminPage.go">관리자 페이지</a></li>
				<li><a href="admin.members.go">회원 관리</a></li>
				<li><a href="admin.list.go">상품 목록</a></li>
				<li><a href="admin.reg">상품 등록</a></li>
				<li><a href="admin.orderList">주문 리스트</a></li>
			</ul>
		</div>
		<!-- /사이드바 -->

		<!-- 본문 -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<h1 class="jumbotron" style="text-align: center; margin: 50px 0;">${goodsRead.goods_id}</h1>
			</div>
			<div class="form-group goodsRead">
				<form action="admin.update.go" method="post" id="readForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 이미지</label>
					</div>
					<div class="form_section_content">
						<img src="resources/img/${goodsRead.goods_img }">
					</div>
					<div>
						<label>상품 ID</label> <input name="goods_id" value="${goodsRead.goods_id}" class="form-control goods_id" readonly>
					</div>
					<div>
						<label>상품명</label> <input name="goods_name" value="${goodsRead.goods_name}" class="form-control" readonly>
					</div>
					<div>
						<label>상품가격</label> <input name="price" value="${goodsRead.goods_price}" class="form-control" readonly>
					</div>
					<div>
						<label>상품분류</label>
						<div class="form-inline">
							<select class="form-control" id="goods_cate">
								<option value="outer">1. 외투</option>
								<option value="top">2. 상의</option>
								<option value="bottom">3. 하의</option>
								<option value="bag">4. 가방</option>
								<option value="acc">5. 액세서리</option>
							</select>
							<button class="btn btn-default btn_goods_cate">입력</button>
							<input name="goods_cate" value="${goodsRead.goods_cate}"
								class="form-control" readonly>
						</div>
					</div>
					<div>
						<label>재고</label> <input name="goods_stock" value="${goodsRead.goods_stock}" class="form-control" readonly>
					</div>
					<div>
						<label>상품정보</label> <input name="goods_detail" value="${goodsRead.goods_detail}" class="form-control" readonly>
					</div>
					<div>
						<label>상품 등록일</label> <input value="${goodsRead.goods_regDate}" class="form-control" readonly>
					</div>
					<div>
						<label>최종 수정일</label> <input value="${goodsRead.goods_updateDate}" class="form-control" readonly>
					</div>
					<div class="btns">
						<button class="btn btn-default" id="btn_goods_update">상품정보 수정</button>
						<a class="btn btn-default" id="btn_goods_delete">상품 삭제</a>
					</div>
				</form>
			</div>
		</div>

		<!-- /본문 -->
	</div>
<script>
	let readForm = $("#readForm")
	
/* 취소 버튼 */
$("#btn_goods_back").click(function(){
	
	location.href="admin.list.go"
	
});
	
$("#btn_goods_delete").click(function() {
		
	var isOk = confirm("상품을 삭제하시겠습니까? (삭제하시면 상품 정보를 되돌릴 수 없습니다.)");
	
	if (isOk) {
		location.href= "admin.delete"
	}
});

</script> 	
</body>
</html>