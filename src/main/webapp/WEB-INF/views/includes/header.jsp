<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/store_jQuery.js"></script>
</head>
<body>
	<nav class="navbar justify-content-end bg-light">
		<c:choose>
			<c:when test="${sessionScope.loginMember.tm_id == null }">
				<a href="member.login.go" class="btn btn-light me-md-2 btn-sm"
					style="float: right;"> 로그인 </a>
				<a href="member.join.go" class="btn btn-light me-md-2 btn-sm"
					style="float: right;">회원가입</a>
			</c:when>
			<c:otherwise>
				<form action="member.logout" method="get">
					<input id="memberInfo"
						style="border: none; font-size: 10pt; text-align: center;"
						value="${sessionScope.loginMember.tm_id }(${sessionScope.loginMember.tm_name})님"
						readonly="readonly">
					<c:if test="${sessionScope.loginMember.tm_id == 'admin'}">
						<a href="adminPage.go" class="btn btn-light me-md-2 btn-sm">
							관리자 페이지</a>
					</c:if>
					<a href="cart.list"
					class="btn btn-light me-md-2 btn-sm">장바구니</a>
					<a href="member.mypage.go" class="btn btn-light me-md-2 btn-sm">
						myPage</a>
					<button id="logoutBtn" class="btn btn-light me-md-2 btn-sm">logout</button>
				</form>
			</c:otherwise>
		</c:choose>
	</nav>


	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/pt">TDJ STORE</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li value="all" class="nav-item"><a class="nav-link" href="/pt/shop.all.go">ALL</a></li>
					<li value="outer" class="nav-item"><a class="nav-link" href="shop.outer.go">OUTER</a></li>
					<li value="top" class="nav-item"><a class="nav-link" href="shop.top.go">TOP</a></li>
					<li value="bottom" class="nav-item"><a class="nav-link" href="shop.bottom.go">BOTTOM</a></li>
				</ul>
			</div>
			${r }
		</div>
	</nav>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>