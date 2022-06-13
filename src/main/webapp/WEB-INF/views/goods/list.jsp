<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<main class="my-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="card text-center"
						style="width: 60rem; margin-left: auto; margin-right: auto;">
						<div class="card-header">상품 리스트</div>
						<div>
							<c:choose>
								<c:when test="${sessionScope.loginMember.tm_id == 'admin' }">
									<table style="width: 100%; border-collapse: collapse;">
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
													<td style="border-bottom: 1px solid #AFB0AE;"><a
														href="goods.read?goods_id=${gag.goods_id }">${gag.goods_id}</a></td>
													<td style="border-bottom: 1px solid #AFB0AE;">${gag.goods_name}</td>
													<td style="border-bottom: 1px solid #AFB0AE;">${gag.goods_price}</td>
													<td style="border-bottom: 1px solid #AFB0AE;">${gag.goods_stock}</td>
													<td style="border-bottom: 1px solid #AFB0AE;">${gag.goods_cate}</td>
													<td style="border-bottom: 1px solid #AFB0AE;">${gag.goods_detail}</td>
													<td style="border-bottom: 1px solid #AFB0AE;"><fmt:formatDate
															value="${gag.goods_regDate}" type="date"
															pattern="yyyy-MM-dd" /></td>
													<td style="border-bottom: 1px solid #AFB0AE;"><fmt:formatDate
															value="${gag.goods_updateDate}" type="date"
															pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:when>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>


	</main>

</body>
</html>