<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jQuery.js"></script>
</head>
<body>
<div>
		<h1 style="text-align: center; margin: 50px 0;">회원 리스트</h1>
		<table>
			<thead>
				<tr>
					<th>회원ID</th>
					<th>이름</th>
					<th>주소</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m" items="${members}" >
					<tr>
						<td>${m.tm_id}</td>
						<td>${m.tm_name}</td>
						<td>${m.tm_addr1}</td>
						<td>${m.tm_addr2}</td>
						<td>${m.tm_addr3}</td>
						<td>${m.tm_phone}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
</body>
</html>