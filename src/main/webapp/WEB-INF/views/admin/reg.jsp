<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/store_jQuery.js"></script>
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
				
			</ul>
		</div>
		<!-- /사이드바 -->
		<!-- 본문 -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<h1 class="jumbotron" style="text-align: center; margin: 50px 0;">상품
					등록</h1>
				<div class="form-group regGoods">
					<form action="admin.read" method="post" id="regForm" enctype="multipart/form-data">
						<div class="ct_left_area" align="center">
							<div class="form_section_title">
								<label>상품 이미지</label>
							</div>
							<div class="image_wrap">
								<input type="file" name="goods_img" accept="image/*" onchange="imageView(this);"> 
							</div>
							<div style="width:100px; height:100px;"><img id="goods_img" src=""></div>
						</div>
					<div class="ct_right_area">
						<div>
							<label>상품 ID</label> <input name="goods_id"
								class="form-control goods_id" required>
						</div>
						<div>
							<label>상품명</label> <input name="goods_name" class="form-control"
								required>
						</div>
						<div>
							<label>상품가격</label> <input name="goods_price" value="0"
								class="form-control" required>
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
								<input name="goods_cate" class="form-control" readonly>
							</div>
						</div>
						<div>
							<label>재고</label> <input name="goods_stock" value="0"
								class="form-control" required>
						</div>
						<div>
							<label>상품정보</label> <input name="goods_detail"
								class="form-control" required>
						<div class="btns">
							<button class="btn btn-default" id="btn_goods_reg">상품 등록</button>
							<button class="btn btn-default" id="btn_goods_back">상품
								정보 페이지로 돌아가기</button>
						</div>
					</div>
				</div>
					</form>
				</div>
			</div>

			<!-- /본문 -->
		</div>
	</div>
	<script>
		let regForm = $("#regForm")

		/* 취소 버튼 */
		$("#btn_goods_back").click(function() {

			location.href = "admin.list.go"

		});
		
		$(".btn_goods_cate").on('click', function(event) {
			event.preventDefault();
			var goods_cate = $("#goods_cate option:selected").val();
			$("input[name='goods_cate']").val(goods_cate);
            /* 상품구분을 선택하고 입력 버튼을 누르면 input란에 해당하는 값이 출력됨 */
		});

	</script>
</body>
</html>