<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
</head>
<body>

<input value="${goodsRead.goods_id }" name="goods_id" hidden="hidden">
	<div class="row">
		<div class="col-lg-12 col-md-12"
			style="width: 100%; margin-left: 1px; margin-right: 1px;">
			<div class="card col-lg-6 col-md-6"
				style="width: 30rem; float: left;">
				<img src="resources/img/goods/${goodsRead.goods_id }.png"
					class="card-img-top">
			</div>

			<div class="card card col-lg-6  col-md-6"
				style="width: 30rem; float: right;">
				<h5 class="card-text"
					style="text-align: left; padding-left: 20px; padding-top: 20px; color: #A2A49F; font-size: 13pt">${goodsRead.goods_cate }</h5>
				<p class="card-text"
					style="text-align: left; padding-left: 20px; padding-top: 20px; color: #525450; font-size: 15pt">${goodsRead.goods_name }</p>
				<p class="card-text"
					style="text-align: left; padding-left: 20px; color: #525450; font-size: 13pt">${goodsRead.goods_detail }</p>
				<p class="card-text"
					style="text-align: left; padding-left: 20px; padding-top: 20px; color: #525450; font-size: 12pt; text-decoration: underline;">price</p>
				<p class="card-text"
					style="text-align: left; padding-left: 20px; color: #525450; font-size: 15pt">${goodsRead.goods_price }won</p>

				<p class="btn btn-secondaryt" style="width: 100%; margin-top: 10px;">ADD
					TO CART</p>
				<p class="btn btn-dark" style="width: 100%;">BUY NOW</p>

			</div>


		</div>

	</div>


	------------리뷰 쓰기 
	<form action="review.reg" method="post" enctype="multipart/form-data">
		<table border="1">
		<tr>
		<td> <input value="${goodsRead.goods_id }" name="tr_g_id"> </td>
		</tr>
			<tr>
				<td>작성자</td>
				<td><input value="${sessionScope.loginMember.tm_name }" name="tr_writer" readonly="readonly">  </td>
			</tr>
			<tr>
				<td><input name="tr_txt" placeholder="내용"></td>
			</tr>
			<tr>
				<td><input type="file" name="tr_img"></td>
			</tr>
			<tr>
				<td>
				<button>등록</button>
				</td>
			</tr>
		</table>
		</form>
	
	
	
	
	-------------- 리뷰 보기 
	
	<table border="1">
		<tr>
			<td colspan="3">review</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>작성자</td>
			<td>날짜</td>
		</tr>
		
		<c:forEach var="rvs" items="${rvs }">
		<tr>
				<td>${rvs.tr_txt }</td>
				<td>${rvs.tr_writer }</td>
				<td><fmt:formatDate value="${rvs.tr_date }" type="date"
						pattern="MM-dd"/></td>
				<td> <img src="resources/img/review/${rvs.tr_img }"> </td>
			</tr>
	
		</c:forEach>
	</table>
</body>
</html>