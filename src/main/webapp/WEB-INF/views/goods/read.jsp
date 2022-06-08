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
						<tr>
							<td>${goodsRead.goods_id}</td>
							<td>${goodsRead.goods_name}</td>
							<td>${goodsRead.goods_price}</td>
							<td>${goodsRead.goods_stock}</td>
							<td>${goodsRead.goods_cate}</td>
							<td>${goodsRead.goods_detail}</td>
							<td><fmt:formatDate value="${goodsRead.goods_regDate}" type="date" pattern="yyyy-MM-dd"/> </td>
							<td><fmt:formatDate value="${goodsRead.goods_updateDate}" type="date" pattern="yyyy-MM-dd"/></td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>