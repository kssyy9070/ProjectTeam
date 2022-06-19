<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/main.css">
</head>
<body>
<%@include file="../includes/header.jsp" %>
	<div id="page-wrapper">
  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a href="adminPage.go">관리자 페이지</a>
      </li>
      	<li><a href="admin.members.go">회원 관리</a></li>
		<li><a href="admin.list.go">상품 목록</a></li>
		<li><a href="admin.reg">상품 등록</a></li>
		<li><a href="admin.orderList">주문 리스트</a></li>
 
    </ul>
  </div>
  <!-- /사이드바 -->

  <!-- 본문 -->
  <div id="page-content-wrapper">
    <div class="container-fluid">
      <h1 class="jumbotron" style="text-align: center; margin: 50px 0;">주문 리스트</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>주문ID</th>
					<th>회원ID</th>
					<th>회원 이름</th>
					<th>주소1</th>
					<th>주소2</th>
					<th>주소3</th>
					<th>전화번호</th>
					<th>결제 금액</th>
					<th>결제 날짜</th>
					<th>구매 수량</th>
					<th>상품ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="o" items="${orders}" >
					<tr>
						<td>${o.order_id}</td>
						<td>${o.tm_id}</td>
						<td>${o.tm_name}</td>
						<td>${o.tm_addr1}</td>
						<td>${o.tm_addr2}</td>
						<td>${o.tm_addr3}</td>
						<td>${o.tm_phone}</td>
						<td>${o.totalAmount}</td>
						<td><fmt:formatDate value="${o.orderDate}"
										type="date" pattern="yyyy-MM-dd" /></td>
						<td>${o.order_qty}</td>
						<td>${o.goods_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
    </div>
  </div>
</body>
</html>