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
</head>
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
				<h1 class="jumbotron" style="text-align: center; margin: 50px 0;">상품 리스트</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>상품ID</th>
							<th>상품명</th>
							<th>상품가격</th>
							<th>재고</th>
							<th>상품분류</th>
							<th>상품정보</th>
							<th>이미지 정보</th>
							<th>상품 등록일</th>
							<th>최종 수정일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="gag" items="${goods}">
							<tr>
								<td><a href="goods.read?goods_id=${gag.goods_id }">${gag.goods_id}</a></td>
								<td>${gag.goods_name}</td>
								<td>${gag.goods_price}</td>
								<td>${gag.goods_stock}</td>
								<td>${gag.goods_cate}</td>
								<td>${gag.goods_detail}</td>
								<td>${gag.goods_img }</td>
								<td><fmt:formatDate value="${gag.goods_regDate}"
										type="date" pattern="yyyy-MM-dd" /></td>
								<td><fmt:formatDate value="${gag.goods_updateDate}"
										type="date" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- /본문 -->
	</div>
</body>
</html>