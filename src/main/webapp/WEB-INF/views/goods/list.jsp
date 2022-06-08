<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h1 style="text-align: center; margin: 50px 0;">상품 리스트</h1>
			<table>
				<thead>
					<tr>
						<th>상품ID</th>
						<th>상품명</th>
						<th>상품가격</th>
						<th>재고</th>
						<th>상품분류</th>
						<th>상품정보</th>
						<th>상품 등록일</th>
						<th>최종 수정일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="gag" items="${goods}">
						<tr>
							<td><a href="goods.read?goods_id=${gag.goods_id }">${gag.goods_id}</a></td>
							<td>${gag.goods_name}</td>
							<td>${gag.goods_price}</td>
							<td>${gag.goods_stock}</td>
							<td>${gag.goods_cate}</td>
							<td>${gag.goods_detail}</td>
							<td><fmt:formatDate value="${gag.goods_regDate}" type="date" pattern="yyyy-MM-dd"/> </td>
							<td><fmt:formatDate value="${gag.goods_updateDate}" type="date" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>