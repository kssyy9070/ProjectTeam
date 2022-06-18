<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						style="width: 35rem; margin-left: auto; margin-right: auto;">
						<div class="card-header">MyPage</div>
						<div class="card-body">
							<form action="member.update" method="post" name="myPageForm"
								onsubmit="return memberUpdateCheck();">
								<div class="form-group row">
									<label for="tm_name"
										class="col-md-4 col-form-label text-md-right">NAME</label>
									<div class="col-md-6">
										<input type="text" class="form-control"name="tm_name"
											value="${sessionScope.loginMember.tm_name }"
											readonly="readonly">
									</div>
								</div>
								<br>
							
								<div class="form-group row">
									<label for="tm_id"
										class="col-md-4 col-form-label text-md-right">ID</label>
									<div class="col-md-6">
										<input type="text" class="form-control"name="tm_id" value="${sessionScope.loginMember.tm_id }"
											readonly="readonly">
									</div>
								</div>
								<br>
								<div class="form-group row">
									<label for="tm_pw"
										class="col-md-4 col-form-label text-md-right">현재PW</label>
									<div class="col-md-6">
										<input class="form-control" name="tm_ppw" type="password">
									</div>
								</div>

								<div class="form-group row">
									<label for="tm_pwChk"
										class="col-md-4 col-form-label text-md-right">변경PW</label>
									<div class="col-md-6">
										<input class="form-control" id="myPage_tm_pw" name="tm_pw" type="password">
									</div>
								</div>
								<br>
									<div class="form-group row">
									<label for="tm_phone"
										class="col-md-4 col-form-label text-md-right">Phone
										Number</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="myPage_tm_phone" name="tm_phone" value="${sessionScope.loginMember.tm_phone }">
									</div>
								</div>
								<br>
								<div class="form-group row">
									<label for="tm_addr1"
										class="col-md-4 col-form-label text-md-right">Address</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="myPage_tm_addr1"
											value="${sessionScope.loginMember.tm_addr1}" name="tm_addr1"
											placeholder="Zip Code"><input class="form-control" 
											id="myPage_tm_addr2"
											value="${sessionScope.loginMember.tm_addr2}" name="tm_addr2"
											placeholder="Address"><input class="form-control" 
											id="myPage_tm_addr3"
											value="${sessionScope.loginMember.tm_addr3}" name="tm_addr3"
											placeholder="Detail Address" autocomplete="off"><br>

									</div>
								</div>

								<div class="col-md-4 offset-md-4">
									<br>
									<button type="submit" class="btn btn-dark">변경</button>
								</div>
						</div>
						</form>
					</div>
				</div>
			</div>
			<div style="text-align: right; color: #AFB0AE;">
									<a onclick="return leaveCheck();">탈퇴</a>
									</div>
		</div>


	</main>
	<%-- <form action="member.update" method="post" name="myPageForm"  onsubmit="return memberUpdateCheck();">
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
	</form> --%>
</body>
</html>