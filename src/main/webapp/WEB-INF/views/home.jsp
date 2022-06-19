<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/img/mainBanner1.png" class="d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="resources/img/mainBanner2.png" class="d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="resources/img/mainBanner3.png" class="d-block w-100"
					alt="...">
			</div> 
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<br>
	<br>

	<p>
	<div class="content">
			<div class="row goods" align="center">
					<c:forEach var="g" items="${goods}">
					<div class="scale col-lg-3 col-md-4 float-start" align="center">
						<a href="goods.detail?goods_id=${g.goods_id }" class="thumbnail"> <img src="resources/img/${g.goods_img }"
							class="img-thumbnail" alt="Thumbnail image"
							style="width: 250px; height: 200px; margin: 20px;"></a>
						<h3>${g.goods_name}</h3>
						<h3>${g.goods_price}<span>원</span>
						</h3>
						<p>
							<a href="goods.detail?goods_id=${g.goods_id }" class="btn btn-primary" role="button">구입하기</a> 
						</p>
					</div>
					</c:forEach>
			</div>
		</div>

</body>
</html>