function loginCheck(){
	let idInput = document.loginForm.login_tm_id;
	let pwInput = document.loginForm.login_tm_pw;


	if (isEmpty(idInput)){
		alert("ID를 입력하세요.");
		idInput.value = "";
		idInput.focus();
		return false;
	}
	if (isEmpty(pwInput)){
		alert("PW를 입력하세요.");
		pwInput.value = "";
		pwInput.focus();
		return false;
	}
	return true;
}

function joinCheck(){
	let idInput = document.joinForm.join_tm_id;
	let pwInput = document.joinForm.join_tm_pw;
	let pwChkInput = document.joinForm.join_tm_pwChk;
	let nameInput = document.joinForm.join_tm_name;
	let zipcodeInput = document.joinForm.join_tm_addr1;
	let addressInput = document.joinForm.join_tm_addr2;
	let detailInput = document.joinForm.join_tm_addr3;
	let phoneInput = document.joinForm.join_tm_phone;
	
	if(isEmpty(idInput) || lessThan(idInput,4) || containsHS(idInput)){
		alert("ID를 입력해주세요.");
		idInput.value = "";
		idInput.focus();
		return false;
	}
	
	if(isEmpty(pwInput) || lessThan(pwInput,4) || notContains(pwInput,"1234567890")
	||notContains(pwInput,"!@#$%^&*()_-+=?")){
		alert("PW를 입력해주세요. 사용가능한 특수문자는 '!@#$%^&*()_-+=?' 입니다.")
		pwInput.value = "";
		pwChkInput.value = "";
		pwInput.focus();
		return false;
	}
	
	if(isEmpty(pwChkInput) || notEquals(pwInput,pwChkInput)){
		alert("PW를 확인해주세요.")
		pwChkInput.value = "";
		pwChkInput.focus();
		return false;
	}
	
	if(isEmpty(nameInput) || !isNotNumber(nameInput) || lessThan(nameInput,2)){
		alert("이름을 입력해주세요.")
		nameInput.value = "";
		nameInput.focus();
		return false;
	}
	
	if(isEmpty(zipcodeInput) || isEmpty(addressInput)
	|| isEmpty(detailInput)){
		alert("주소를 입력해주세요.")
		detailInput.focus();
		return false;
	}
	
	if(isEmpty(phoneInput) || isNotNumber(phoneInput) || lessThan(phoneInput,11)){
		alert("핸드폰 번호를 입력하세요.")
		phoneInput.focus();
		return false;
	}

}

function memberUpdateCheck() {
	var pwInput = document.myPageForm.myPage_tm_pw;
	var phoneInput = document.myPageForm.myPage_tm_phone;
	var zipcodeInput = document.myPageForm.myPage_tm_addr1;
	var addressInput = document.myPageForm.myPage_tm_addr2;
	var detailInput = document.myPageForm.myPage_tm_addr3;

	if(isEmpty(pwInput) || lessThan(pwInput,4) || notContains(pwInput,"1234567890")
	||notContains(pwInput,"!@#$%^&*()_-+=?")){
		alert("PW를 입력해주세요. 사용가능한 특수문자는 '!@#$%^&*()_-+=?' 입니다.")
		pwInput.value = "";
		pwInput.focus();
		return false;
	}
	if(isEmpty(phoneInput) || isNotNumber(phoneInput) || lessThan(phoneInput,11)){
		alert("핸드폰 번호를 입력하세요.")
		phoneInput.focus();
		return false;
	}
	
	if(isEmpty(zipcodeInput) || isEmpty(addressInput)
	|| isEmpty(detailInput)){
		alert("주소를 입력해주세요.")
		detailInput.focus();
		return false;
	}
	
}

function leaveCheck() {
	var really = confirm("정말 탈퇴하시겠습니까?");
	if (really) {
		location.href = "member.leave";
	}
}