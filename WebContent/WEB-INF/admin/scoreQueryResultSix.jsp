<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html style="height: 100%">
<head>
<meta charset="utf-8">
<title>回归分析算法</title>
<link href="css/ui-lightness/jquery-ui-1.10.4.custom.css"
	rel="stylesheet">
<!-- 引入 ECharts 文件 -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui-1.10.4.custom.js"></script>
<script src="js/echarts3/echarts.common.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#copy").button();
		$("#exit").button();
		$("#dialog2")
				.dialog(
						{
							autoOpen : false,
							width : 400,
							buttons : [
									{
										text : "修改",
										click : function() {
											if ($("input[name=oldPass]").val() == "") {
												$(".ErrorStyle").empty();
												$("#oldPassError").text(
														"旧密码不能为空");
											} else if ($("input[name=newPass]")
													.val() == "") {
												$(".ErrorStyle").empty();
												$("#newPassError").text(
														"新密码不能为空");
											} else if ($("input[name=newPass]")
													.val() != $(
													"input[name=rePass]").val()) {
												$(".ErrorStyle").empty();
												$("#rePassError").text(
														"两次密码输入不匹配");
											} else {
												$
														.ajax({
															type : "post",
															url : "adminPassModify.action",
															dataType : "json",
															data : {
																adminName : $(
																		"input[name=adminName]")
																		.val(),
																oldPass : $(
																		"input[name=oldPass]")
																		.val(),
																newPass : $(
																		"input[name=newPass]")
																		.val(),
																rePass : $(
																		"input[name=rePass]")
																		.val()
															},
															success : function(
																	data) {
																var d = eval("("
																		+ data
																		+ ")");
																if (d.flag) {
																	alert("密码修改成功,将会跳转到登录页面请用新密码重新登录");
																	window.location.href = "index.jsp";
																} else {
																	$(
																			".ErrorStyle")
																			.empty();
																	$(
																			"#oldPassError")
																			.text(
																					"旧密码输入错误");
																}

															},
															error : function() {
																alert("系统异常，请稍后重试！");
															}
														});
											}
										}
									}, {
										text : "取消",
										click : function() {
											$(this).dialog("close");
										}
									} ]
						});
		// Link to open the dialog
		$("#dialog2-link").click(function(event) {
			$("#dialog2").dialog("open");
			event.preventDefault();
		});
	});
</script>
<body style="height: 100%; margin: 0">
	<style>
.popInfo {
	text-align: left;
}

#dialog2-link {
	padding: .4em 1em .4em 20px;
	text-decoration: none;
	position: relative;
}

#dialog2-link span.ui-icon {
	margin: 0 5px 0 0;
	position: absolute;
	left: .2em;
	top: 50%;
	margin-top: -8px;
}
.ErrorStyle {
	color: red;
	border-left: 6px;
}
</style>
<div align="right">
			
			<a href="#" id="dialog2-link" class="ui-state-default ui-corner-all">
			<span class="ui-icon ui-icon-newwin"></span>修改密码</a>
			
			<a href="adminMain.action">
			<button id="copy" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
			<span class="ui-icon-newwin">版权信息</span>
			</button></a>
			
			<a href="exitSystem.action">
			<button id="exit" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
			<span class=" ui-icon-newwin">退出系统</span>
			</button></a>
			&nbsp;&nbsp;登录用户名：
			admin
			用户身份：
			管理员
			&nbsp;&nbsp;
		</div>
	<br>
	<div align="center">
		<a href="stuSearch.action"><button
				class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				role="button" aria-disabled="false">
				<span class="ui-button-text"> <img alt="" src="image/stu.jpg">
				</span>
			</button>
			</a>
			<a href="teacherSearch.action"><button
				class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				role="button" aria-disabled="false">
				<span class="ui-button-text"> <img alt=""
					src="image/teacher.jpg">
				</span>
			</button>
			</a>
			<a href="courseForm.action"><button
				class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				role="button" aria-disabled="false">
				<span class="ui-button-text"> <img alt=""
					src="image/course.jpg">
				</span>
			</button>
			</a>
			<a href="gradeSetUp.action"><button
				class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				role="button" aria-disabled="false">
				<span class="ui-button-text"> <img alt=""
					src="image/grade.jpg">
				</span>
			</button>
			</a>
			<a href="scoreEnterChose.action"><button
				class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				role="button" aria-disabled="false">
				<span class="ui-button-text"> 
				<img alt=""src="image/score.jpg">
				</span>
			</button>
			</a> 
			</div>
	<div id="scoreService" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
	<div id="scoreService-1">
   	<a href="scoreEnterChose.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩录入</span></button></a>
    <a href="scoreQuery.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩查询和分析</span></button></a>
    <a href="scoreModify.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩修改</span></button></a>
    <a href="scoreDelete.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩删除</span></button></a>
    <a href="scoreCount.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩统计</span></button></a>
    <a href="scorePrinter.action"><button class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">成绩打印</span></button></a>
    </div>
</div>
<div id="accordion" class="ui-accordion ui-widget ui-helper-reset" role="tablist">
    	<h3 class="ui-accordion-header ui-helper-reset ui-state-default ui-accordion-header-active ui-state-active ui-corner-top ui-accordion-icons" role="tab" id="ui-accordion-accordion-header-0" aria-controls="ui-accordion-accordion-panel-0" aria-selected="true" aria-expanded="true" tabindex="0"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>成绩管理——成绩查询和分析</h3>
    </div>
    <div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" tabindex="-1" role="dialog" aria-describedby="dialog2" aria-labelledby="ui-id-1" style="display: none; position: absolute;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">密码修改</span><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="close"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">close</span></button></div><div id="dialog2" class="popInfo ui-dialog-content ui-widget-content">
	</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">修改</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
</head>
       <div id="container" style="height: 100%"></div>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
       <script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
var data = [
																														    [0.1, 4.2],[0.1, 4.5],[0.2, 3.1],[0.2, 3.8],[0.3, 4.2],[0.3, 3.9],[0.4, 4.2],
																														    [0.4, 4.2],[0.5, 3.1],[0.5, 4.2],[0.6, 3.2],[0.6, 3.1],[0.7, 4.2],
																														    [0.7, 3.9],[0.8, 3.1],[0.8, 4.6],[0.9, 3.8],[0.9, 3.9],[0.9, 3.1]
								];

// See https://github.com/ecomfe/echarts-stat
var myRegression = ecStat.regression('linear', data);

myRegression.points.sort(function(a, b) {
    return a[0] - b[0];
});

option = {
    title: {
        text: '各个班级语文成绩的一元线性回归分析',
        subtext: 'By wyf.regression',
        left: 'center'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    xAxis: {
        type: 'value',
        splitLine: {
            lineStyle: {
                type: 'dashed',
            }
        },
    },
    yAxis: {
        type: 'value',
        min: 1.5,
        splitLine: {
            lineStyle: {
                type: 'dashed',
            }
        },
    },
    series: [{
        name: 'scatter',
        type: 'scatter',
        label: {
            emphasis: {
                show: true,
                position: 'left',
                textStyle: {
                    color: 'blue',
                    fontSize: 16
                }
            }
        },
        data: data
    }, {
        name: 'line',
        type: 'line',
        showSymbol: false,
        data: myRegression.points,
        markPoint: {
            itemStyle: {
                normal: {
                    color: 'transparent'
                }
            },
            label: {
                normal: {
                    show: true,
                    position: 'left',
                    formatter: myRegression.expression,
                    textStyle: {
                        color: '#333',
                        fontSize: 14
                    }
                }
            },
            data: [{
                coord: myRegression.points[myRegression.points.length - 1]
            }]
        }
    }]
};;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
</script>
<div style="text-align:center;font-Size:34px">
语文成绩(y轴/20)与不同班级(x轴)的回归算法分析
</div>
<style type="text/css">
body {
	font: 72.5% "Trebuchet MS", sans-serif;
	margin: 50px;
	background-color:#7ecef4;
}
.datalist{
	border:1px solid #0058a3;	/* 表格边框 */
	font-family:Arial;
	border-collapse:collapse;	/* 边框重叠 */
	background-color:#eaf5ff;	/* 表格背景色 */
	font-size:14px;
}
.datalist caption{
	padding-bottom:5px;
	font:bold 1.4em;
	text-align:left;
}
.datalist th{
	border:1px solid #0058a3;	/* 行名称边框 */
	background-color:#4bacff;	/* 行名称背景色 */
	color:#FFFFFF;				/* 行名称颜色 */
	font-weight:bold;
	padding-top:4px; padding-bottom:4px;
	padding-left:12px; padding-right:12px;
	text-align:center;
}
.datalist td{
	border:1px solid #0058a3;	/* 单元格边框 */
	text-align:center;
	padding-top:4px; padding-bottom:4px;
	padding-left:10px; padding-right:10px;
}
.datalist tr.altrow{
	background-color:#c7e5ff;	/* 隔行变色 */
}
.frame{
	height:435px;
}
</style>
 </body>
</html>