<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="/public/backpublic.jsp" %>
<script type="text/javascript" src="easyui/jscharts.js"></script>
<script type="text/javascript">
$(function(){
	var colorArr=['#44A622','#A7B629','#CAD857','#E4DB7B','#ECDE49','#ECC049','#EC9649','#D97431','#D95531'];
	$("#chartSearch").click(function(){
		var url='chart_search.action';
		var param={
				"x":$("#x轴").val(),	
				"y":$("#y轴").val(),
		};
		$.post(url,param,function(data){
			var myChart = new JSChart('chart_container', $("#type").val(), '');
			myChart.setDataArray(data);
			myChart.colorize(colorArr.slice(0,data.length));
			myChart.setSize(600, 300);
			myChart.setBarValues(false);
			myChart.setBarSpacingRatio(45);
			myChart.setBarOpacity(1);
			myChart.setBarBorderWidth(0);
			myChart.setTitle('用户报表');
			myChart.setTitleFontSize(10);
			myChart.setTitleColor('#607985');
			myChart.setAxisValuesColor('#607985');
			myChart.setAxisNameX($("#x轴").text(),true );
			myChart.setAxisNameY($("#y轴").text(), false);
			myChart.setGridOpacity(0.8);
			myChart.draw();
		},"json");
	});
});
</script>
<title>easyui模版jsp</title>
</head>
<body>
请选择你要查找的报表类型：
<select>
<option value="用户报表">用户报表</option>
</select>
x轴选择
<select id="x轴">
<option value="college">专业</option>
</select>
y轴选择
<select id="y轴">
<option value="count(id)">用户数量</option>
</select>
请选择图形
<select id="type">
<option value="bar">柱状图</option>
<option value="line">线状图</option>
<option value="pie">饼状图</option>
</select>
<button id="chartSearch">查询</button>

<div id="chart_container">Loading chart...</div>
</body>
</html>