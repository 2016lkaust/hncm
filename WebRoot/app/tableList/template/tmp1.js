var queryList = '/hncm/user/company_count.action';
count();
function count(){
	ajaxPost(queryList,{},function(data){
		console.log(data);
		$("#number").html(data.totalnum);
		$("#money").html(data.totalmoney);
	});
}
