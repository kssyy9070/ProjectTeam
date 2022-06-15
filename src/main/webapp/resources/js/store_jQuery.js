$(function() {
	searchAddressEvent();
});


function searchAddressEvent() {
	$("#join_tm_addr1, #join_tm_addr2, #myPage_tm_addr1, #myPage_tm_addr2").click(function() {
		new daum.Postcode({
			oncomplete: function(data) {
				$("#join_tm_addr1").val(data.zonecode);
				$("#join_tm_addr2").val(data.roadAddress);
				$("#myPage_tm_addr1").val(data.zonecode);
				$("#myPage_tm_addr2").val(data.roadAddress);
			}
		}).open();
	});
}

function imageView(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	           $('#goods_img').attr('src', e.target.result)
             .width(100)
             .height(100);
	    };
	    reader.readAsDataURL(input.files[0]);
	  } 
	}