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
			background-image: url(/Web01/image/food.jpg);
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
<script src="/Web01/myLib/jquery-3.2.1.min.js"></script>
<script>
  $(function(){
	$('.title').css({
		width: "400px",
		height: "400px",
		marginLeft: "-200px",
		marginTop: "-200px"
	}).animate({
		width: "380px",
		height: "380px",
		marginLeft: "-190px",
		marginTop: "-190px"
	},300).animate({
		width: "800px", 
		height: "750px",
		marginLeft: "-400px",
		marginTop: "-400px"
	}, 2000);
	
	$('#title1').css({
		opacity: "0.0"
	}).animate({
		opacity: "0.95"
	}, 2000);
	
	$('a').click(function() {
		$('#main').css({
			opacity: "0.0"
		}).animate({
			opacity: "0.95"
		}, 1000);
	})//a_click
	
 })//ready
 

  
 
 
</script>
</head>
<body>
	<div id = "container">
	</div>
	<div class ="title">
	<div class ="title" id="title1">
		<br>
		점심 뭐먹지?
		<div align="right">
		<a href="lunchlogout" class="logout" >logout</a>
		</div>
		<div class ="menu">
			<table>
				<tr>
					<th width="25%"><a href="lunchjsp/lunchmainjsp.jsp" target="main">HOME</a></th>
					<th width="25%"><a href="myinfo" target="main">MyInfo</a></th>
					<th width="25%"><a href="todaymenu" target="main">TodayMenu</a></th>
					<th width="25%"><a href="result" target="main">Result</a></th>
				</tr>
			</table>
		</div>
		<section>
		<iframe src="lunchjsp/lunchmainjsp.jsp" id="main" name="main"></iframe>
		</section>
	</div>
	</div>
</body>
</html>