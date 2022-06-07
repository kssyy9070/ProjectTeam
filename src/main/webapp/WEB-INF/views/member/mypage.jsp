<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="member.update" method="post" name="myPageForm" onsubmit="return memberUpdateCheck();">
		<table border="1">
			<tr>
				<td colspan="2">MyPage</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="tm_name" value="${sessionScope.loginMember.tm_name }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input id="myPage_tm_phone" name="tm_phone" value="${sessionScope.loginMember.tm_phone }"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="tm_id" value="${sessionScope.loginMember.tm_id }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>현재 비밀번호</td>
				<td><input name="tm_ppw" type="password"></td>
			</tr>
			<tr>
				<td>변경 비밀번호</td>
				<td><input id="myPage_tm_pw"name="tm_pw" type="password"></td>
			</tr>
			<tr>
				<td rowspan="3">주소</td>
				<td>
				<input id="myPage_tm_addr1" value="${sessionScope.loginMember.tm_addr1}" name= "tm_addr1" placeholder="Zip Code"><br>
				<input id="myPage_tm_addr2" value="${sessionScope.loginMember.tm_addr2}" name="tm_addr2" placeholder="Address"><br>
				<input id="myPage_tm_addr3" value="${sessionScope.loginMember.tm_addr3}" name="tm_addr3" placeholder="Detail Address" autocomplete="off"><br>
				</td>
			</tr>
			<tr>
			<tr>
				<td><button>변경</button></td>
				<td><a onclick="return leaveCheck();">탈퇴</a></td>
			</tr>
		</table>
	</form>
</body>
</html>