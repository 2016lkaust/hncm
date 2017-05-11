var queryList = '/hncm/user/user_getUserList.action';

var pageSize = 10;
var pageNum = 0;
var totalNum = 0;

refreshOrderTable();

// 每页显示多少条数
function refreshOrderTable() {
	var perpage = $('.perpage').val();
	refreshTablePage("1", perpage);
}
// 翻页刷新
function refreshForPageChange() {
	var perpage = $('.perpage').val();
	refreshTablePage("0", perpage);
}

/*
 * 用服务器刷新列表页面 1刷新页码， 0翻页不刷新页码
 */
function refreshTablePage(refreshPage, pageSize) {
	var total_num = 30;// total_num暂时写死 ，后期需要从后台获取
	ajaxPost(queryList, {
		"page" : curPage,
		"rows" : pageSize
	}, function(data) {
		// console.log(data);
		total_num = data.count;
		queryOrderCallBack(data);
		if (refreshPage == "1") {
			initPageNum(total_num, pageSize);
			$('#total_num').text(total_num);
			$('#pageCtr1').css('width', 'auto');
		}
	});
}
// 查询列表服务器返回处理
function queryOrderCallBack(data) {
	if (data.status == "1") {
//		console.log(data);
		var panelHtml = '';
		panelHtml = dealPage(panelHtml, data.data);

		$("#user-group").html(panelHtml);
	}
}
/**
 * 将内容以panel样式展示
 * 
 * @param panelHtml
 *            要替换的内容
 * @param data
 *            服务器返回的信息
 */
function dealPage(panelHtml, data) {
	for ( var i = 0; i < data.length; i++) {
		panelHtml += '<div class="panel panel-default col-md-3">';
		panelHtml += '<div class="panel-body">';
		panelHtml += '账号：<span class="account col-md-offset-1">'
				+ data[i].account + '</span>';
		panelHtml += '<span class="pull-right">ID:&nbsp;&nbsp;<span class="uid">'
				+ data[i].uid + '</span></span><br>';
		panelHtml += '用户名：&nbsp;&nbsp;<span class="username">'
				+ data[i].username + '</span><br> ';
		if (data[i].status == '0') {
			panelHtml += '状态：<span class="status my-normal col-md-offset-1">正常</span><br>';
		} else if (data[i].status == '1') {
			panelHtml += '状态：<span class="status my-disabled col-md-offset-1">禁用</span><br>';
		}
		panelHtml += '注册时间：<span class="createdtime">' + data[i].createdtime
				+ '</span>';
		panelHtml += '</div></div>';
	}
	return panelHtml;
}
/**
 * 
 * @param tableHtml
 *            要替换的内容
 * @param data
 *            服务器返回的信息
 * @returns
 */
//function dealPage(tableHtml, data) {
	// tableHtml += '<thead><tr>' +
	// '<th>ID</th>' +
	// '<th>账号</th>' +
	// '<th>用户名</th>' +
	// '<th>注册时间</th>' +
	// '<th>状态</th>'+
	// '<th></th>'+
	// '</tr>'+
	// '</thead>';
	// for (var i = 0; i < data.length; i++) {
	// tableHtml += '<tr>';
	// tableHtml += '<td>' + data[i].uid + '</td>';
	// tableHtml += '<td>' + data[i].account + '</td>';
	// tableHtml += '<td>' + data[i].username + '</td>';
	// tableHtml += '<td>' + moment(data[i].createdtime).format('YYYY-MM-DD
	// HH:mm') + '</td>';
	// if(data[i].status == '0') {
	// tableHtml += '<td>正常</td>';
	// tableHtml += '<td>禁用</td>';
	// }else if(data[i].status == '1') {
	// tableHtml += '<td style="color:#f00;">禁用</td>';
	// tableHtml += '<td>删除</td>';
	// }
	// tableHtml += '</tr>';
	// }
	// return tableHtml;
//}
