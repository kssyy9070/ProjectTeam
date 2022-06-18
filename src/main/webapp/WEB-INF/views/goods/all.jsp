<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="resources/js/jQuery.js"></script>
</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<p>
	<div class="content">
	
			<h1 class="page-header">&nbsp;&nbsp;ALL</h1>
			<div class="form-inline">
			<select class="form-control" id="goods_cate" onchange="location.href=this.value">
					<option value="/pt/shop.outer.go">1. 외투</option>
					<option value="/pt/shop.top.go">2. 상의</option>
					<option value="/pt/shop.bottom.go">3. 하의</option>
			</select>
			</div>
			<div class="row goods" align="center">
					<c:forEach var="g" items="${goods}">
					<div class="scale col-lg-3 col-md-4 float-start" align="center">
						<a href="goods.view?goods_id=${g.goods_id }" class="thumbnail"> <img src="resources/img/${g.goods_img }"
							class="img-thumbnail" alt="Thumbnail image"
							style="width: 250px; height: 200px; margin: 20px;"></a>
						<h3>${g.goods_name}</h3>
						<h3>${g.goods_price}<span>원</span>
						</h3>
						<p>
							<a href="#" class="btn btn-primary" role="button">구입하기</a> 
							<a href="#" class="btn btn-default" role="button">장바구니</a>
						</p>
					</div>
					</c:forEach>
			</div>
		</div>
		<%@include file="../includes/footer.jsp"%>
		
		
</body>
</html>