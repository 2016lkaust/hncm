$(function() {
	//*****鼠标经过提示信息
	$("[data-toggle='tooltip']").tooltip();
	goToPage('home');
	// ****选框点击事件begin****
	$('.side-menu').delegate('li', 'click', function() {// 点击切换选中状态
		$(this).addClass('active').siblings().removeClass('active');
	});

});
function goToPage(tag) {
	if (tag == 'home') {
		$('.right-main').load('/hncm/app/tableList/template/tmp1.jsp');
	}
	if (tag == 'enterprise') {
		$('.right-main').load('/hncm/app/tableList/template/tmp2.jsp');
	}
	if (tag == 'analyse') {
		$('.right-main').load('/hncm/app/tableList/template/tmp3.jsp');
	}
	if (tag == 'user') {
		$('.right-main').load('/hncm/app/tableList/template/tmp4.jsp');
	}
}
