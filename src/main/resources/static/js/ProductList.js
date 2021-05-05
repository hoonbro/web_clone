$(document).ready(function() {
	$(".like_btn").click(function() {
		if ($(this).attr('aria-pressed') === 'false') {
			$(this).attr('aria-pressed', 'true');
			$(this).css('color', '#FF4500');
		} else {
			$(this).attr('aria-pressed', 'false');
			$(this).css('color', 'gray');
		}
	});

	$(".like_img_btn").click(function() {
		if ($(this).attr('aria-pressed') === 'false') {
			$(this).attr('aria-pressed', 'true');
			$(this).css('color', 'white');
			$(this).css('background-color', '#FF4500');
		} else {
			$(this).attr('aria-pressed', 'false');
			$(this).css('color', 'gray');
			$(this).css('background-color', 'white');
		}
	});
});