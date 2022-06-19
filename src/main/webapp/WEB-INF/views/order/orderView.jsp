<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<div class="form-group">
		<div class="row" style="text-align: center;">
			<h1 class="page-header" style="margin-bottom: 50px;">나의 주문 내역</h1>
			<table class="table table-hover"
				style="width: 60%; margin: auto; border-bottom: 1px solid #D5D5D5;">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center;">상품정보</th>
						<th>가격</th>
						<th>수량</th>
						<th>결제금액</th>
						<th>결제일</th>
					</tr>
				</thead>
				<tbody style="text-align: center;">
					<c:choose>
						<c:when test="${orderView == null}">
							<tr style="text-align: center;">
								<td colspan="8"><h3>주문 내역이 없습니다.</h3></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${orderView}" var="ov">
								<tr>
									<td style="text-align: center;"><img alt="thumbnail"
										src="resources/img/${ov.goods_img}" width="40%"> <input
										type="hidden" value="${ov.goods_id}" name="goods_id"
										id="goods_id"></td>
									<td style="text-align: left;" >${ov.goods_name}<br>${ov.goods_detail}</td>
									<td><fmt:formatNumber type="number" value="${ov.goods_price}" />&nbsp;원</td>
									<td>${ov.order_qty}</td>
									<td><fmt:formatNumber type="number"
											value="${ov.totalAmount}" />&nbsp;원</td>
									<td><fmt:formatDate value="${ov.orderDate}" type="date"
											pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>

	<!-- class=row -->
</body>
</html>