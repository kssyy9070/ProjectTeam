function delReviewCheck() {
	var really = confirm("정말 삭제하시겠습니까?");
	if (really) {
		location.href = "review.del";
	}
}