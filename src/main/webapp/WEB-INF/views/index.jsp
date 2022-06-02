<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" id="siteTitleArea">
		<tr>
			<td><a href="member.login.go"> 로그인 </a></td>
			<td><a href="member.join.go">회원가입</a></td>
		</tr>
		<tr>
			<td colspan="2" id="siteTitle">store</td>
		</tr>
	</table>
	<table border="1" id="siteContentArea">
		<tr>
			<td>
				<jsp:include page="${cp }"/>
			</td>
		</tr>
	</table>
	<table  border="1" id="siteFooterArea">
		<tr>
			<td>고객센터</td>
			<td>SNS</td>
		</tr>
	</table>

</body>
</html>