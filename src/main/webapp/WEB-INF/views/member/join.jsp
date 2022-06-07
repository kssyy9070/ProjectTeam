<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="member.join" method="post" name="joinForm" onsubmit="return joinCheck();">
	<table border="1" id="joinTbl">
		<tr>
			<td>ID</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_id" name="tm_id" placeholder="한글/특수문자를 제외한 4~10자" autocomplete="off" maxlength="10">
			</td>
		</tr>
		<tr>
			<td>PW</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_pw" name="tm_pw" placeholder="숫자와 특수문자를 포함한 4~20자" autocomplete="off" type="password" maxlength="20">
			</td>
		</tr>
		<tr>
			<td>PW Check</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_pwChk" name="tm_pwChk" placeholder="pw 확인" autocomplete="off" type="password" maxlength="20">
			</td>
		</tr>
		<tr>
			<td>NAME</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_name" name="tm_name" placeholder="2자 이상" autocomplete="off" maxlength="15">
			</td>
		</tr>
		<tr>
			<td>ADDR</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_addr1" name="tm_addr1" placeholder="Zip Code"><br>
				<input id="join_tm_addr2" name="tm_addr2" placeholder="Address"><br>
				<input id="join_tm_addr3" name="tm_addr3" placeholder="Detail Address" autocomplete="off"><br>
			</td>
		</tr>
		<tr>
			<td>Phone</td>
		</tr>
		<tr>
			<td>
				<input id="join_tm_phone" name="tm_phone" placeholder="PHONE NUMBER" autocomplete="off" maxlength="11">
			</td>
		</tr>
		
		<tr>
			<td>
				<button>Join</button>
			</td>
		</tr>
	</table>



</form>
</body>
</html>