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
                    <div class="card text-center" style="width: 40rem; margin-left: auto; margin-right: auto;">
                        <div class="card-header">Join</div>
                        <div class="card-body">
                            <form action="member.join" method="post" name="joinForm" onsubmit="return joinCheck();">
                                <div class="form-group row">
                                    <label for="tm_name" class="col-md-4 col-form-label text-md-right">NAME</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control"
                                        id="join_tm_name" name="tm_name" placeholder="2자 이상" autocomplete="off" maxlength="15">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="tm_id" class="col-md-4 col-form-label text-md-right">ID</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control"
                                       id="join_tm_id" name="tm_id" placeholder="한글/특수문자를 제외한 4~10자" autocomplete="off" maxlength="10">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="tm_pw" class="col-md-4 col-form-label text-md-right">PW</label>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" id="join_tm_pw" name="tm_pw" 
                                        placeholder="숫자와 특수문자를 포함한 4~20자" autocomplete="off" type="password" maxlength="20">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="tm_pwChk" class="col-md-4 col-form-label text-md-right">PW Check</label>
                                    <div class="col-md-6">
                                       <input type="password" class="form-control" id="join_tm_pwChk" name="tm_pwChk" placeholder="pw 확인"
                                       autocomplete="off" type="password" maxlength="20">
                                    </div>
                                 </div>
                                <br>
                                <div class="form-group row">
                                    <label for="tm_addr1" class="col-md-4 col-form-label text-md-right">Address</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="join_tm_addr1" name="tm_addr1" placeholder="우편번호">
                                        <input type="text" class="form-control" id="join_tm_addr2" name="tm_addr2" placeholder="주소">
										<input type="text" class="form-control" id="join_tm_addr3" name="tm_addr3" placeholder="상세주소" autocomplete="off">
                                    </div>
                                </div>

                               <br>
                                <div class="form-group row">
                                    <label for="tm_phone" class="col-md-4 col-form-label text-md-right">Phone Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="join_tm_phone" name="tm_phone"
                                        placeholder="핸드폰 번호" autocomplete="off" maxlength="11">
                                    </div>
                                </div>

                                    <div class="col-md-4 offset-md-4">
                                    <br>
                                        <button type="submit" class="btn btn-dark">
                                        join
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>


</main>


</body>
</html>