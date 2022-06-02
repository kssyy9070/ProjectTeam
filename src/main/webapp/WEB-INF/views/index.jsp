<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td><c:choose>
					<c:when test="${sessionScope.loginMember.tm_id == null }">
						<td><a href="member.login.go"> 로그인 </a></td>
						<td><a href="member.join.go">회원가입</a></td>
					</c:when>
					<c:otherwise>
						<td><form action="member.logout" method="get">
								<input id="memberInfo"
									value="${sessionScope.loginMember.tm_id }(${sessionScope.loginMember.tm_name})님"
									readonly="readonly"> <a href="member.mypage.go"> myPage</a>
								<button id="logoutBtn">logout</button>
							</form></td>
					</c:otherwise>
				</c:choose></td>
		</tr>
	</table>
	<table border="1" id="siteTitleArea">
		<tr>
			<td colspan="2" id="siteTitle">store</td>
			<td>${r }</td>
		</tr>
	</table>
	<table border="1" id="siteContentArea">
		<tr>
			<td><jsp:include page="${cp }" /></td>
		</tr>
	</table>
	<table border="1" id="siteFooterArea">
		<tr>
			<td>고객센터</td>
			<td>SNS</td>
		</tr>
	</table>

</body>
</html>