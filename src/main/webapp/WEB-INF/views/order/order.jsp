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
<link rel="stylesheet" href="resources/css/admin/main.css">
<script type="text/javascript" src="resources/js/jQuery.js"></script>
</head>
<body>
<%@include file="../includes/header.jsp"%>
<p>
<div class="container">
		<form action="order.orderResult.go" method="post">
		<c:set value="2500" var="del_fee"/>
		<div class="row qnas" style="text-align: center;">
			<h1 class="page-header">주문하기</h1>
			<p>
			<table class="table table-hover" style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center;">이미지</th>
						<th>상품정보</th>
						<th>가격</th>
						<th>수량</th>
					</tr>
				</thead>
				<tbody style="align: center;">
						<tr>
							<td><input type="hidden" value="${sessionScope.loginMember.tm_id}" id="login_tm_id"></td>
							<td><img alt="thumbnail" src="resources/img/${sessionScope.tgsInfo.goods_img}" width="40%">
							<input type="hidden" value="${sessionScope.tgsInfo.goods_id}" name="goods_id" id="goods_id">
							</td>
							<td>${sessionScope.tgsInfo.goods_name}<br>${sessionScope.tgsInfo.goods_detail}</td>
							<td><fmt:formatNumber type="number" value="${sessionScope.tgsInfo.goods_price}"/>&nbsp;원</td>
							<input type="hidden" value="${sessionScope.tgsInfo.goods_price}" id="goods_price">
							<td><select name="order_qty" class="form-control order_qty">
								<c:forEach begin="1" end="${sessionScope.tgsInfo.goods_stock > 5 ? 5 : sessionScope.tgsInfo.goods_stock}" var="stock">
									<option value="${stock}">${stock}</option>
								</c:forEach>
								<input type="hidden" value="${sessionScope.tgsInfo.goods_stock}" id="order_qty">	
							</select>
							</td>
						</tr>
				</tbody>
			</table>
		</div>
		
		<div class="row" style="text-align: center; margin: 80px 0;">
			<h1 class="page-header">주문정보 확인</h1>
			<h4 style="color: red;">주문자 정보와 배송지가 다른 경우 직접 입력해주세요.</h4>
		</div>
		<div class="row">
			<div class="form-horizontal">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">ID</label>
					<div class="col-sm-10">
						<input class="form-control" id="tm_id" placeholder="ID" name="tm_id" value="${sessionScope.loginMember.tm_id}" readonly>
					</div>
				</div>
				
				<div class="form-group">
					<label for="tm_name" class="col-sm-2 control-label">Name</label>
					<div class="col-sm-10">
						<input class="form-control" id="tm_name" placeholder="Name" name="tm_name" value="${sessionScope.loginMember.tm_name}">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputAdd" class="col-sm-2 control-label">Address</label>
					<div class="col-sm-10">
						<input type="text" id="tm_addr1" name="tm_addr1" value="${sessionScope.loginMember.tm_addr1}">&nbsp;
						<input type="button" class="btn btn-default btn-sm" id="tm_addr2" value="우편번호 찾기"><br>
						<input class="form-control" type="text" id="tm_addr2" name="tm_addr2" value="${sessionScope.loginMember.tm_addr2}">
						<input class="form-control" type="text" id="tm_addr3" name="tm_addr3" placeholder="상세주소"
						value="${sessionScope.loginMember.tm_addr3}">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputTel" class="col-sm-2 control-label">Tel</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="tm_phone" placeholder="Tel" name="tm_phone" value="${sessionScope.loginMember.tm_phone}">
					</div>
				</div>
			</div>
		</div><!-- class=row -->
		
		<div class="row" style="text-align: center; margin: 80px 0;">
			<h1 class="page-header">결제수단 확인</h1>
			<div style="text-align: center;">
				<input type="radio" name="cal_info" value="transfer"><label style="margin-right: 50px;">&nbsp;계좌이체</label>
				<input type="radio" name="cal_info" value="no_bankingBook"><label style="margin-right: 50px;">&nbsp;무통장 입금</label>
				<input type="radio" name="cal_info" value="tel_billing"><label style="margin-right: 50px;">&nbsp;핸드폰 결제</label>
				<input type="radio" name="cal_info" value="card"><label>&nbsp;카드 결제</label>
			</div>
			<hr>
			<div class="row" style="text-align: center; margin: 50px 0;">
				<label>상품가격 :&nbsp; <span id="price"></span>&nbsp;원</label>
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				<label>배송비 :&nbsp;<span id="del_fee"></span>&nbsp;원
				</label>
				<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
				<label style="font-size: 1.5em;">총 결제금액 : <span id="totalprice"></span>&nbsp;원
				<input type="hidden" id="totalAmount" name="totalAmount">
				</label>
			</div>
			<div>
				<button class="btn btn-default btn-myorder">결제하기</button>
				<button class="btn btn-default back_to_shop">돌아가기</button>
			</div>
		</div>
		</form>
	</div>
<script type="text/javascript">
		var tm_id = $("#login_tm_id").val();
		var goods_id = $("#goods_id").val();
		
		$("input[name='cal_info']").click(function() {
			
			var qty = $(".order_qty").val();
			var price = $("#goods_price").val();
			var del_fee = "<c:out value='${del_fee}'/>";
			
			var amount = price * qty;
			
			if (amount < 30000) {	
				totalAmount = Number(amount) + Number(del_fee);
				$("#price").html(amount);
				$("#del_fee").html(del_fee);
				$("#totalprice").html(totalAmount);
				$("#totalAmount").val(totalAmount);
			} else {
				totalAmount = amount;
				$("#price").html(totalAmount);
				$("#del_fee").html(0);
				$("#totalprice").html(totalAmount);
				$("#totalAmount").val(totalAmount);
			}
	});
	
	$(".back_to_shop").click(function() {
		history.back();
	});
</script>

</body>
</html>