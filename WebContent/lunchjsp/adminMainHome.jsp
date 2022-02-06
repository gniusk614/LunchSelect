<%@page import="mvcPrac.AMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>점심 뭐먹지?</title>
	
	<style>
		@font-face {
		    font-family: 'Cafe24SsurroundAir';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
	    	font-family: 'Vitro_core';
	    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Vitro_core.woff') format('woff');
	    	font-weight: normal;
	    	font-style: normal;
		}
		*{margin: 0; padding: 0;}
		body{width:700px; height:700px; font-family: 'Cafe24SsurroundAir';}
		#container{
			width: 100vw; height:100vh;
			background-image: url(/LunchSelect/cssHtmlTest/image/food.jpg);
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100% 100%;
			opacity: 0.5;
		}
		.title{
			font-family: 'Vitro_core';
			font-size: 30pt;
			color:black;
			position: absolute;
			width:800px; 
			height:750px;
			background-color: white;
		    left: 50%; top: 50%; /* 위치값 -> %는 부모(바로 상위 Tag) 크기 기준 */
            margin-left: -400px; /* margin : 테두리 밖으로 설정되는 여백 */ 
            margin-top: -400px;
			text-align: center;		
			opacity: 0.95;
		}
		.logout{
			margin-right: 70px; font-size: small; color: black; text-decoration: none;
			text-align: right;
		}
		.logout:visited{
			color: black;	
		}
		.logout:hover{
			color: gray;
		}
		
		.menu{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 800px;
			height: 50px;
			position: relative;
			text-align: center;
			top:20px;		}
		section{
			width: 800px; height: 500px;}
		table {
			width:800px;
			line-height: 50px;
		}
		table a{
			color:black;
			text-decoration: none;
		}
		table a:visited{
			color: black;	
		}
		table a:hover{
			color: gray;
		}
		iframe{
			width: 100%;
			height: 100%;
			border: none;
		}

	</style>

</script>
</head>
<body>
	<div id = "container">
	</div>
	<div class ="title">
		<br>
		관리자페이지 
		<div align="right">
		<a href="lunchlogout" class="logout" >logout</a>
		</div>
		<div class ="menu">
			<table>
				<tr><th width="25%"><a href="lunchjsp/adminLunchmainjsp.jsp" target="main">HOME</a></th>
					<th width="25%"><a href="result" target="main">Result</a></th>
					<th width="25%"><a href="lunchjsp/adminMenuSetting.jsp" target="main">Menu Set</a></th>
					<th width="25%">Review</th>
				</tr>
			</table>
		</div>
		<section>
		<iframe src="lunchjsp/adminLunchmainjsp.jsp" name="main"></iframe>
		</section>
	</div>
</body>
</html>