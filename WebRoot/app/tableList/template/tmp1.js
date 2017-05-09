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
		var len2 = data.fund.length;
		for ( var i = 0; i < len1; i++) {
			names[i] = data.location[i].name;
			locationCounts[i] = data.location[i].count;
		}
		for ( var i = 0; i < len2; i++) {
			levels[i] = data.fund[i].level;
			fundCounts[i] = data.fund[i].count;
		}

		// 基于准备好的dom，初始化echarts实例
		var id1 = "location";
		var id2 = "fund";
		initBar(id1, names, locationCounts);
		initPie(id2, levels, fundCounts);
		console.log(levels);
	});

}
/* 柱状图初始化 */
function initBar(id, x, y) {
	var myChart = echarts.init(document.getElementById(id));
	option = {
		color : [ '#2EC7C9' ],
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
/* 饼图初始化 */
function initPie(id, tips, groups) {
	var myChart = echarts.init(document.getElementById(id));
	option = {
		title : {
			x : 'center'
		},
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} : {c} ({d}%)"
		},
		legend : {
			x : 'center',
			y : 'bottom',

		},
		toolbox : {
			show : true,
			feature : {
				mark : {
					show : true
				},
				// 显示数据
				/* dataView : {show: true, readOnly: false}, */
				magicType : {
					show : true,
					type : [ 'pie', 'funnel' ]
				}
			// 还原
			/* restore : {show: true}, */
			// 保存图片
			/* saveAsImage : {show: true} */
			}
		},
		calculable : true,
		series : [

		{
			name : '面积模式',
			type : 'pie',
			radius : [ 30, 110 ],
			center : [ '50%', '50%' ],
			roseType : 'area',
			data : [ {
				value : groups[0],
				name : tips[0]
			}, {
				value : groups[1],
				name : tips[1]
			}, {
				value : groups[2],
				name : tips[2]
			}, {
				value : groups[3],
				name : tips[3]
			}, ]
		} ]
	};
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}