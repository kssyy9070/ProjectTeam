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


	<c:if test="${sessionScope.loginMember != null}">
		<form action="review.reg" method="post" enctype="multipart/form-data">
			<table style="margin-top: 30px; width: 100%;">
				<tr>
					<td><input value="${goodsRead.goods_id }" name="goods_id"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td><input value="${sessionScope.loginMember.tm_name }"
						name="tr_writer" readonly="readonly" hidden="hidden"></td>
				</tr>
				<tr>
					<td><input class="form-control" type="text" name="tr_txt"
						placeholder="한 줄 리뷰 작성" style="width: 90%; float: left;"
						autocomplete="off" maxlength="250">
						<button class="btn btn-secondary" style="margin-left: 20px;">등록</button>
					</td>
				</tr>
				<tr>
					<td colspan="2" style=""><input type="file" name="tr_img"
						style="float: left; margin-top: 10px;"></td>
				</tr>

			</table>
		</form>
	</c:if>



	<div class="row">
		<div class="col-lg-12 col-md-12"
			style="width: 100%; margin-left: 1px; margin-right: 1px; margin-top: 20px; ">
			<div class="card col-lg-12 col-md-12">review</div>
			<div class="card col-lg-12 col-md-12">
			<table style="margin-top: 3px; width: 100%;">

		<tr style="text-decoration: underline;">
			<td align="center" style="width: 70%;">내용</td>
			<td align="center" style="width: 20%;">작성자</td>
			<td align="center" style="width: 10%;">날짜</td>
		</tr>

		<c:forEach var="rvs" items="${rvs }">
			<tr>
				<td align="center" id="txt">${rvs.tr_txt }</td>
				<td align="center">${rvs.tr_writer }</td>
				<td align="center"><fmt:formatDate value="${rvs.tr_date }" type="date"
						pattern="MM-dd" /></td>
				<%-- <td><img src="resources/img/review/${rvs.tr_img }"></td> --%>
			</tr>

		</c:forEach>
	</table>
			</div>
		</div>
	</div>
</body>
</html>