//*************************************查询企业信息并显示******************************************
var queryList = '/hncm/user/company_getCompanyList.action';
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
	console.log(perpage);
}

/*
 * 用服务器刷新列表页面 1刷新页码， 0翻页不刷新页码
 */
function refreshTablePage(refreshPage, pageSize) {
	var total_num = 10;// total_num暂时写死 ，后期需要从后台获取
	ajaxPost(queryList, {
		"page" : curPage,
		"rows" : pageSize
	}, function(data) {
//		console.log(data);
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
		var tableHtml = '';
		tableHtml = dealPage(tableHtml, data.data);
		$("#detailTab").html(tableHtml);
	}
}
/**
 * 
 * @param tableHtml
 *            要替换的内容
 * @param data
 *            服务器返回的信息
 * @returns
 */
function dealPage(tableHtml, data) {
	tableHtml += '<thead><tr>' + '<th>企业编号</th>' + '<th>企业名称</th>'
			+ '<th>企业类型</th>' + '<th>法定代表人</th>' + '<th>联系电话</th>'
			+ '<th>注册资金</th>' + '<th>注册时间</th>' + '<th></th>' + '</tr>'
			+ '</thead>';
	for ( var i = 0; i < data.length; i++) {
		tableHtml += '<tr>';
		tableHtml += '<td>' + data[i].id + '</td>';
		tableHtml += '<td>' + data[i].name + '</td>';
		tableHtml += '<td>' + data[i].tname + '</td>';
		tableHtml += '<td>' + data[i].corporation + '</td>';
		tableHtml += '<td>' + data[i].tel + '</td>';
		tableHtml += '<td>' + data[i].registeredCaptial + '</td>';
		tableHtml += '<td>' + data[i].registeredTime + '</td>';
		tableHtml += '<td><button class="btn btn-link" data-toggle="modal" data-target="#myModal" onclick="more('
				+ data[i].id
				+ ');">查看</button>&nbsp;&nbsp;<button class="btn btn-link">删除</button></td>';
		tableHtml += '</tr>';
	}
	return tableHtml;
}
// ***********************************点击查看后的操作*******************************************
/**
 * 点击列表中的“查看”弹出模态框，从后台获取公司信息填充到模态框中
 */
function more(id) {
//	console.log(id);
	var url = "/hncm/user/company_getCompany.action";
	ajaxPost(url, {
		cid : id
	}, function(data) {
//		console.log(data);
		var show=data.data;
		$("#id").html(show.id);
		$("#name").val(show.name);
		$("#corporation").val(show.corporation);
		$("#type").val(show.tname);
		$("#tel").val(show.tel);
		$("#captial").val(show.registeredCaptial);
		$("#time").val(show.registeredTime);
		$("#address").val(show.address);
		$("#scope").val(show.scope);
		getTypes();
		getCities();
	});
}
/**
 * 获取所有类型名
 */
function getTypes() {
	var url = '/hncm/user/company_getTypes.action';
	ajaxPost(url, {
		
	}, function(data) {
//		console.log(data);
		var len=data.data.length;
		for(var i=0;i<len;i++){
			$("#type").append("<option>"+data.data[i].name+"</option>");
		}
	});
}

/**
 * 获取所有城市列表
 */
function getCities() {
	var url2 = '/hncm/user/company_getCities.action';
	ajaxPost(url2, {
	}, function(data) {
// console.log(data);
		var len=data.data.length;
		for ( var i = 0; i < len; i++) {
			$("#city").append("<option value="+data.data[i].id+">"+data.data[i].name+"</option>");
		}
		cascading();
		$("#city").change(function(){
			cascading();
		});
	});
}
/**
 * 级联菜单
 */
function cascading(){
	var cid=$("#city option:selected").attr("value");
//	console.log(cid);
	getAreasByCid(cid);
}
/**
 * 通过城市id获取其对应的地区名，实现级联选项
 * @param cid
 */
function getAreasByCid(cid) {
	var url = '/hncm/user/company_getAreasByCid.action';
	ajaxPost(url, 
			{ cid:cid }, 
			function(data) { 
//				console.log(data); 
				var len=data.data.length; 
				$("#area").empty();
				for(var i=0;i<len;i++){ 
					$("#area").append("<option>"+data.data[i].name+"</option>"); 
				}
	});
	
}
//*******************************************处理添加按钮的相应事件******************************************