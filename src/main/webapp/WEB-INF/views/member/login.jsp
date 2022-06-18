<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="member.login" method="post" name="loginForm"
		onsubmit="return loginCheck();">
		<div class="input-group input-group-sm mb-3">
			<span class="input-group-text" id="inputGroup-sizing-sm"> ID </span>
			<input id="login_tm_id" name="tm_id" placeholder="ID"
				autocomplete="off" maxlength="10" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-sm">
		</div>
		<div class="input-group input-group-sm mb-3">
			<span class="input-group-text" id="inputGroup-sizing-sm">PW</span> <input
				id="join_tm_pw" name="tm_pw" placeholder="Password"
				autocomplete="off" type="password" maxlength="20"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-sm">
		</div>
		<button type="submit" class="btn btn-dark">Login</button>

		<!-- 		
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
	</table> -->

	</form>

</body>
</html>