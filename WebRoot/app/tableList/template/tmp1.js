var queryList = '/hncm/user/company_count.action';
count();
function count() {
	ajaxPost(queryList, {}, function(data) {
		console.log(data);
		$("#number").html(data.totalnum);
		$("#money").html(data.totalmoney);
		console.log(data.location);
		var names = new Array();
		var locationCounts = new Array();
		var levels = new Array();
		var fundCounts = new Array();
		var len1 = data.location.length;
		var len2=data.fund.length;
		for ( var i = 0; i < len1; i++) {
			names[i] = data.location[i].name;
			locationCounts[i] = data.location[i].count;
		}
		for ( var i = 0; i < len2; i++) {
			levels[i] = data.fund[i].name;
			fundCounts[i] = data.fund[i].count;
		}

		// 基于准备好的dom，初始化echarts实例
		var id1 = "location";
		var id2="fund";
		init(id1, names, locationCounts);
		init(id2, levels, fundCounts);

	});
	function init(id, x, y) {
		var myChart = echarts.init(document.getElementById(id));
		option = {
			color : [ '#3398DB' ],
			tooltip : {
				trigger : 'axis',
				axisPointer : { // 坐标轴指示器，坐标轴触发有效
					type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			grid : {
				left : '3%',
				right : '4%',
				bottom : '3%',
				containLabel : true
			},
			xAxis : [ {
				type : 'category',
				data : x,
				axisTick : {
					alignWithLabel : true
				}
			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				name : '直接访问',
				type : 'bar',
				barWidth : '60%',
				data : y,
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	}
}
