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
<style type="text/css">
.header {
	margin-bottom: 50px;
}

</style>
</head>
<body>
	<div class="header">
		<%@include file="../includes/header.jsp"%>
	</div>
	<div class="container" style="width: 70%">

		<div class="row">
			<h1 class="page-header"
				style="text-align: center; margin-bottom: 50px;">${goodsRead.goods_name}</h1>
			<input type="hidden" value="${goodsRead.goods_id}" id="goods_id">
		</div>
		<div class="row" style="float: left; text-align: center; width: 35%;">
			<img alt="goods_img" src="resources/img/${goodsRead.goods_img}"
				width="150%"">
		</div>

		<div class="row goods_detail" style="width: 40%; float: right;">
			<div class="form-group" style="text-align: center;">
				<h3 class="page-header">
					<span>${goodsRead.goods_name}</span><br>
					<small>${goodsRead.goods_detail}</small>
				</h3>
			</div>
			<div class="form-group" style="text-align: left;">
				<label>가격 : </label><span>&nbsp;<fmt:formatNumber
						value="${goodsRead.goods_price}" type="number" /></span><span>&nbsp;원</span>
				<input type="hidden" value="${goodsRead.goods_price}"
					id="goods_price">
			</div>
			<div class="form-group" style="text-align: left;">
				<label>배송비 : </label><span>&nbsp;2500원</span>
				<p>도서산간지역 배송비 5000원 / 3만원 이상 결제시 무료배송</p>
			</div>
			<div class="form-group" style="text-align: left;">
				<label>적립금 : </label><span><fmt:parseNumber var="test"
						value="${goodsRead.goods_price / 100}" integerOnly="true" />
					${test}&nbsp;원</span>
			</div>

			<c:choose>
				<c:when
					test="${goodsRead.goods_cate != 'acc' && goodsRead.goods_cate != 'bag'}">
					<div class="form-horizontal" style="text-align: left;">
						<label>옵션 : </label> <select class="form-control opt_select"
							name="selectedOpt">
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
						</select>
					</div>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>
			<div class="form-horizontal" style="text-align: left;">
				<label>구매수량 : </label> <select class="form-control"
					id="select_count">
					<c:forEach begin="1" end="${goodsRead.goods_stock}" var="count">
						<option>${count}</option>
					</c:forEach>
				</select>
			</div>
			<hr>

			<div class="row">
				<div class="selected_option" style="text-align: right;"></div>
				<div style="text-align: center;">
					<button class="btn btn-default btn-order">주문하기</button>
					<button class="btn btn-default btn-cart">장바구니</button>
					<button class="btn btn-default btn-wishlist">위시리스트</button>
				</div>
			</div>
			<hr>
		</div>
	</div>
<script type="text/javascript">
$("#select_count").on('blur', function() {
	var count = $(this).val();
	var price = $("#goods_price").val();
	var opt = $(".opt_select").val();
	
	
	if (count*price >= 30000) {
		var shipping = '무료배송';
		var finalPrice = count*price;
	} else {
		var shipping = 2500;
		var finalPrice = (count*price) + shipping;
	}
	
	var str = '';
	
	str += '<p><label>수량 : </label><span>&nbsp;' + count + '</span>&nbsp;&nbsp;&nbsp;';	
	
	if (opt != 'S' && opt != 'M' && opt != 'L') {
		str += '<lable></lable>';
	} else {
		str += '<label>옵션 : </label><span>&nbsp;' + opt + '</span>&nbsp;&nbsp;&nbsp;';	
	}
	
	str += '<label>배송비 : </label><span>&nbsp;' + shipping + '</span>&nbsp;&nbsp;&nbsp;';
	str	+= '<label>가격 : </label><span>&nbsp;' + price + ' 원</span></p>';
	str += '<h4><label>결제금액 : </label><span>&nbsp;' + finalPrice + ' 원</span></h4>'; 
	str += '<span class="glyphicon glyphicon-exclamation-remove"></span>';
	
	$(".selected_option").html(str);
});

var goods_id = $("#goods_id").val();
var tm_id = $("#tm_id").val();

$(".btn-order").click(function() {
	location.assign("#");
});

$(".btn-cart").click(function() {
	var check = confirm("상품이 장바구니에 담겼습니다. 확인하시겠습니까?");
	if (check) {
		location.assign("#");
	} 
});

$(".btn-wishlist").click(function() {
	alert("상품을 위시리스트에 추가하였습니다.");
});
</script>
</body>
</html>