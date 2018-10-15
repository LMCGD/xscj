<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>zzuli</title>
    <link href="css/ui-lightness/jquery-ui-1.10.4.custom.css"
	rel="stylesheet">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui-1.10.4.custom.js"></script>
<script type="text/javascript">
	$(function(){
		$("#accordion").accordion();
	});
</script>
<style type="text/css">
body {
	font: 72.5% "Trebuchet MS", sans-serif;
	margin: 50px;
	background-color:#7ecef4;
	background-image: url(image/loginBg.jpg);
}
#info{
	height:400px;
}
</style>
  </head>
  
  <body>
    <jsp:include page="stuServiceNavigation.jsp"></jsp:include>
    <div id="accordion">
    	<h3>学生成绩分析管理系统欢迎您的使用</h3>
    	<div align="left" id="info">
    		<p><strong>公司：</strong>zzuli</p>
    		<p><strong>作者：</strong>wyf</p>
    		<p><strong>联系电话：</strong>18XXXXXXXX</p>
    		<p><strong>QQ：</strong>15XXXXXXXX</p>
    		<p><strong>Email：</strong>15XXXXXXXXX@qq.com</p>
    	</div>
    </div>
  </body>
</html>
