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
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<style type="text/css">
.delBtn {
	float: right;
	text-align: right;
}
</style>
</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<div class="container">
		<div class="row qnas" style="text-align: center;">
			<h1 class="page-header" style="margin-bottom: 30px;">장바구니</h1>
			<table class="table table-hover"
				style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
				<thead>
					</script>
					<tr>
						<th colspan="2" style="text-align: center;">상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>상품정보</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${cartList != null}">
							<c:forEach items="${cartList}" var="c" varStatus="status">
								<tr>
									<td><img src="resources/img/${c.goods_img }"
										class="img-thumbnail" alt="Thumbnail image"
										style="width: 200px; height: 150px; margin: 10px;"></td>
									<td>${c.goods_name}</td>
									<td><fmt:formatNumber type="number"
											value="${c.goods_price}" />&nbsp;원</td>
									<td><select>
											<c:forEach var="count" begin="1"
												end="${c.cart_qty > 5 ? 5 : c.cart_qty}">
												<option>${count}</option>
											</c:forEach>
									</select></td>
									<td>${c.goods_detail}</td>
									<td class="delete">
										<button type="button" class="delete_${c.cart_id}_btn" data-cart_id="${c.cart_id}">삭제</button>
									</td>
									<script>
									$(".delete_${c.cart_id}_btn").click(function() {
										var confirm_val = confirm("정말 삭제하시겠습니까?");

										if (confirm_val) {
											var checkArr = new Array();
											
											checkArr.push($(this).attr("data-cart_id"));
											
											$.ajax({
												url : "deleteCart",
												type : "post",
												data : {
													chbox : checkArr
												},
												success : function(result) {
													if (result == 1) {
														location.href = "/pt/cart.list";
													} else {
														alert("삭제 실패");
													}
												}
											});
										}
									});
									</script>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5"><h3>장바구니에 내역이 없습니다.</h3></td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<div class="row" style="text-align: center; margin: 80px 0;">
			<button class="btn btn-default btn-order">주문하기</button>
			<button class="btn btn-default btn-back_to_shop">쇼핑을 계속하기</button>
		</div>
	</div>
	<script type="text/javascript">
		$(".btn-back_to_shop").click(function() {
			history.back();
		});
		
		$(".btn-order").click(function() {
			location.href = "order.order"
		});
		
	</script>
</body>
</html>