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
<script type="text/javascript">
	$(document).ready(function() {

		$("#report tr:odd").addClass("odd");
		$("#report tr:not(.odd)").hide();
		$("#report tr:first-child").show();

		$("#report tr.odd").click(function() {
			$(this).next("tr").toggle();
			$(this).find(".arrow").toggleClass("up");

		});

	});
</script>
<body>
	<input value="${goodsRead.goods_id }" id="goods_id" hidden="hidden">
	<div class="row">
		<div class="col-lg-12 col-md-12"
			style="width: 100%; margin-left: 1px; margin-right: 1px;">
			<div class="card col-lg-6 col-md-6"
				style="width: 30rem; float: left;">
				<img src="resources/img/${goodsRead.goods_img }"
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
				<button type="button" class="minus" id="minus">-</button>
				<input type="number" class="numBox" min="1" max="${goodsRead.goods_stock}"
					value="1" readonly="readonly" />
				<button type="button" class="plus" id="plus">+</button>

				<button class="btn btn-default btn-cart">ADD TO CART</button>
				<p class="btn btn-dark" style="width: 100%;">BUY NOW</p>

			</div>


		</div>

	</div>


	<c:if test="${sessionScope.loginMember != null}">
		<form action="review.reg" method="post" enctype="multipart/form-data">
			<table style="margin-top: 30px; width: 100%;" id="re">
				<tr>
					<td><input value="${goodsRead.goods_id }" name="tr_g_id"
						readonly="readonly" hidden="hidden"></td>
				</tr>
				<tr>
					<td><input value="${sessionScope.loginMember.tm_id }"
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
			style="width: 100%; margin-left: 1px; margin-right: 1px; margin-top: 20px;">
			<div class="card col-lg-12 col-md-12">review</div>
			<div class="card col-lg-12 col-md-12">
				<table style="margin-top: 3px; width: 100%;" id="report">

					<tr style="text-decoration: underline;">
						<td style="width: 1px;"></td>
						<td align="center" style="width: 70%;">내용</td>
						<td align="center" style="width: 20%;">작성자</td>
						<td align="center" style="width: 10%;">날짜</td>
					</tr>

					<c:forEach var="rvs" items="${rvs }">
						<tr>
							<td> <input value="${rvs.tr_no }" name="tr_no" hidden="hidden"> </td>
							<td align="center" id="txt" class="arrow">${rvs.tr_txt }</td>
							<td align="center">${rvs.tr_writer }</td>
							<td align="center"><fmt:formatDate value="${rvs.tr_date }"
									type="date" pattern="MM-dd" /></td>

						</tr>
						<tr>
							<td colspan="2" align="center"><img
								src="resources/img/${rvs.tr_img }"></td>
							<td>
							 <c:if test="${sessionScope.loginMember.tm_id == rvs.tr_writer}">
						<a style="text-align: right;" onclick="return delReviewCheck();">삭제</a>
						</c:if>

							</td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
$(".plus").click(function(){
	   var num = $(".numBox").val();
	   var plusNum = Number(num) + 1;
	   
	   if(plusNum >= ${goodsRead.goods_stock}) {
	    $(".numBox").val(num);
	   } else {
	    $(".numBox").val(plusNum);          
	   }
	 });
	  
$(".minus").click(function(){
	   var num = $(".numBox").val();
	   var minusNum = Number(num) - 1;
	   
	   if(minusNum <= 0) {
	    $(".numBox").val(num);
	   } else {
	    $(".numBox").val(minusNum);          
	   }
	 });

$(".btn-cart").click(function(){
	  var goods_id = $("#goods_id").val();
	  var cart_qty = $(".numBox").val();
	           
	  var data = {
	    goods_id : goods_id,
	    cart_qty : cart_qty
	    };
	  
	  $.ajax({
	   url : "cart.add",
	   type : "post",
	   data : data,
	   success : function(result){
	    
	    if(result == 1) {
	     alert("카트 담기 성공");
	     $(".numBox").val("1");
	    } else {
	     alert("회원만 사용할 수 있습니다.")
	     $(".numBox").val("1");
	    }
	   },
	   error : function(){
	    alert("카트 담기 실패");
	   }
	  });
	 });
</script>
</body>
</html>