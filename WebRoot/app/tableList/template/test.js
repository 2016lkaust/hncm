getAreas();
function getAreas() {
	var url = '/hncm/user/company_getAreasByCid.action';
	ajaxPost(url, {
		"page" : curPage,
		"rows" : pageSize
	}, function(data) {
		console.log(data);
		for ( var i = 0; i < data.data.length; i++) {
			console.log(data.data[i].name);
		}
	});
}
function getCityByCid() {
	var url2 = '/hncm/user/company_getCities.action';
	ajaxPost(url2, {
		"page" : curPage,
		"rows" : pageSize
	}, function(data) {
		console.log(data);
		for ( var i = 0; i < data.data.length; i++) {
			console.log(data.data[i].name);
		}
	});
}