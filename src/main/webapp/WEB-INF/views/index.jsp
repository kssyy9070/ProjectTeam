<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TDJ STROE</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/store_jQuery.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/kimsyValidChecker.js"></script>
<script type="text/javascript" src="resources/js/memberCheck.js"></script>
</head>
<body>

<nav class="navbar justify-content-end bg-light">
    <c:choose>
		<c:when test="${sessionScope.loginMember.tm_id == null }">
			<a href="member.login.go" class="btn btn-light me-md-2 btn-sm"
				style="float: right;">
				로그인 </a>
			<a href="member.join.go" class="btn btn-light me-md-2 btn-sm"
				style="float: right;">회원가입</a>
		</c:when>
		<c:otherwise>
			<form action="member.logout" method="get">
				<input id="memberInfo" style="border: none; font-size: 10pt;text-align: center;"
					value="${sessionScope.loginMember.tm_id }(${sessionScope.loginMember.tm_name})님"
					readonly="readonly"> <a href="member.mypage.go"
					class="btn btn-light me-md-2 btn-sm"> myPage</a>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/pt">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">카테고리</a></li>
					<li class="nav-item"><a class="nav-link" href="#">이름적으세요 </a></li>
				</ul>
			</div>
			${r }
		</div>
	</nav>

	
	<br>
	<br>


	<table id="siteContentArea" align="center">
		<tr>
			<td align="center"><jsp:include page="${cp }" /></td>
		</tr>
	</table>



	<!-- footer -->

	<footer class="bg-white">
		<div class="container py-5">
			<div class="row py-3">

				<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
					<h6 class="text-uppercase font-weight-bold mb-4">About</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-2"><a href="#" class="text-muted">Contact
								Us</a></li>
						<li class="mb-2"><a href="#" class="text-muted">About Us</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Stories</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Press</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
					<h6 class="text-uppercase font-weight-bold mb-4">Help</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-2"><a href="#" class="text-muted">Payments</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Shipping</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Cancellation</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Returns</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
					<h6 class="text-uppercase font-weight-bold mb-4">Policy</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-2"><a href="#" class="text-muted">Return
								Policy</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Terms Of
								Use</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Security</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Privacy</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
					<h6 class="text-uppercase font-weight-bold mb-4">Company</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-2"><a href="#" class="text-muted">Login</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Register</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Sitemap</a></li>
						<li class="mb-2"><a href="#" class="text-muted">Our
								Products</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 mb-lg-0">
					<h6 class="text-uppercase font-weight-bold mb-4">고객센터</h6>
					<p class="text-muted mb-4">
						1588-1588<br> 운영시간평일 11:00 - 18:00 (토 ∙ 일, 공휴일 휴무)<br>
						점심시간평일 13:00 - 14:00
					</p>
					<ul class="list-inline mt-4">
						<li class="list-inline-item"><a href="#" target="_blank"
							title="twitter"><i class="bi bi-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"
							title="instagram"><i class="bi bi-instagram"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"
							title="facebook"><i class="bi bi-facebook"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"
							title="youtube"><i class="bi bi-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<hr class="p-0 m-0 b-0">


		<div class="bg-light py-2">
			<div class="container text-center">
				<p class="text-muted mb-0 py-2">&copy; TDJ Corp.</p>

			</div>
		</div>

	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>