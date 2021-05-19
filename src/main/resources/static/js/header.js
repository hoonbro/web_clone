$(function() {
	$('.dropdown').hover(function() {
		$(this).addClass('open');
	}, function() {
		$(this).removeClass('open');
	});

});
function moreView() {
	$('#moreList').css('display', "inline");
	$('#moreList').addClass("navbar-nav");
	$('#more').css('visibility', 'hidden');

}
function closeView() {
	$('#moreList').css('display', "none");
	$('#more').css('visibility', 'visible');
}
