<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="member.login" method="post" name="loginForm" onsubmit="return loginCheck();">
		<table border="1" id="loginTbl">
		<tr>
			<td>ID</td>
		</tr>
		<tr>
			<td>
				<input id="login_tm_id" name="tm_id" placeholder="ID" autocomplete="off" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>PW</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_pw" name="tm_pw" placeholder="Password" autocomplete="off" type="password" maxlength="20">
			</td>
		</tr>
		<tr>
			<td>
				<button>Login</button>
			</td>
		</tr>
	</table>

	</form>

</body>
</html>