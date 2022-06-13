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
						<div class="card-header">회원 리스트</div>
						<div>
							<c:choose>
									<c:when test="${sessionScope.loginMember.tm_id == 'admin' }">
							<table style="width: 100%; border-collapse: collapse;">
								<thead>
									<tr>
										<th>ID</th>
										<th>이름</th>
										<th>우편번호</th>
										<th>주소</th>
										<th>상세주소</th>
										<th>전화번호</th>
									</tr>
								</thead>
								
								<tbody>
								
									<c:forEach var="m" items="${members}">
										<tr>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_id}</td>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_name}</td>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_addr1}</td>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_addr2}</td>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_addr3}</td>
											<td style="border-bottom: 1px solid #AFB0AE;">${m.tm_phone}</td>

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