
// <input>을 넣었을때
// 내용물이 없으면 true, 있으면 false
function isEmpty(input) {
	return (!input.value);
}

// <input>, 최소 글자수를 넣었을 때
// 글자수가 부족하면 true, 아니면 false
function lessThan(input, len) {
	return (input.value.length < len);
}

// <input>을 넣었을 때
// 한글/특수문자가 들어있으면 true, 아니면 false
function containsHS(input) {
	var okSet = "1234567890qwertyuiopasdfghjklzxcvbnm@._-QWERTYUIOPASDFGHJKLZXCVBNM";
	for (var i = 0; i < input.value.length; i++) {
		if (okSet.indexOf(input.value[i]) == -1) {
			return true;
		}
	}
	return false;
}

// <input> x 2개 넣었을때
// 글자가 다르면 true, 같으면 false
function notEquals(input1, input2) {
	return (input1.value != input2.value);
}

// <input>, 문자열셋을 넣었을때
// 그 문자열셋에 해당하는게 없으면 true, 있으면 false
// 있어야하는걸 적는거
function notContains(input, set) {
	for (var i = 0; i < set.length; i++) {
		if (input.value.indexOf(set[i]) != -1) {
			return false;
		}
	}
	return true;
}

// <input>넣었을때
// 숫자가 아니면 true, 숫자면 false
function isNotNumber(input) {
	return ((input.value.indexOf(" ") != -1) || isNaN(input.value));
}

// <input>, 확장자를 넣었을때
// 그게 아니면 true, 그거면 false
function isNotType(input, type) {
	type = "." + type;
	return (input.value.indexOf(type) == -1);
}






