
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style>
		@font-face {
	    	font-family: 'Vitro_core';
	    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Vitro_core.woff') format('woff');
	    	font-weight: normal;
	    	font-style: normal;
		}
		@font-face {
		    font-family: 'Cafe24SsurroundAir';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}		
		
		
		*{margin: 0; padding: 0;}
		body{width:700px; font-family: 'Cafe24SsurroundAir';}
		#container{
			width: 100vw; height:100vh;
			background-image: url("/LunchSelect/cssHtmlTest/image/food.jpg");
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
			width:400px; 
			height:400px;
			background-color: white;
		    left: 50%; top: 50%; /* 위치값 -> %는 부모(바로 상위 Tag) 크기 기준 */
            margin-left: -200px; /* margin : 테두리 밖으로 설정되는 여백 */ 
            margin-top: -200px;
			text-align: center;		
			opacity: 0.95;
		}
		.content{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 400x;
			position: relative;
			text-align: center;	
			padding-top: 100px;
		}
		
		hr{margin:10px;}
		
		.input1{
			top: 90%;
		
		}
		table{ 
			width: 350px;	height: 500px;
			left:50%; top:300px; 
			font-family: 'Cafe24SsurroundAir';
			font-size: 10pt;
			margin-left: -175px; /* margin : 테두리 밖으로 설정되는 여백 */ 
            margin-top: -175px;
			text-align: center;	
			position: absolute; 
		}
 		table,tr,td,th{
 			height:50px;
 			border-collapse: collapse;
			}
		table th{height:30px; background-color: lightgray;}
		
		.info {background-color: gray;}
		.food {margin: 10px; height:80px;}
		.blank{height:15px;}

	</style>

</head>
<body>
	<div class ="title">
		<div class ="content">
		설정된 오늘의 메뉴 입니다. 
			<table>
				<tr>
					<td class="info" colspan="2" style="color: white;">[ Today's Menu ]</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">오늘의 메뉴</th>
					<td>
						<c:set var="vo" value="${todaymenu}"/>
						<c:if test="${not empty vo.menu1}">
						${vo.menu1}&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu2}">
						${vo.menu2}&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu3}">
						${vo.menu3}&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu4}">
						${vo.menu4}&nbsp;&nbsp; 
						</c:if><br>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" >
						이 메뉴가 작성된 날짜는 ${vo.regdate} 입니다.
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>