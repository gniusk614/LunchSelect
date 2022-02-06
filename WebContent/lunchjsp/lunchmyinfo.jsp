<%@page import="mvcPrac.AMemberJoinsMenuVO"%>
<%@page import="mvcPrac.AMemberService"%>
<%@page import="mvcPrac.AMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my info</title>
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
		body{width:700px; font-family: 'Cafe24SsurroundAir';}
		#container{
			width: 100vw; height:100vh;
			background-image: url("./image/food.jpg");
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
		.contents{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 400px;
			position: relative;
			text-align: center;
			padding-top: 150px;
			}
		table{ 
			width: 350px;	height: 500px;
			left:50%; top:50%; 
			font-family: 'Cafe24SsurroundAir';
			font-size: 10pt;
			margin-left: -175px; /
			/* margin : 테두리 밖으로 설정되는 여백 */ 
            margin-top: -175px;
			text-align: center;	
			position: absolute; 
		}
 		table,tr,td,th{
 			height: 50px;
 			border-collapse: collapse;
			}

		
		table th{width:120px; background-color: lightgray;}
		
		.info {height: 30px; background-color: gray;}
		.food {margin: 10px; height:80px;}
		.blank{height:15px;}
	</style>
<script src="/Web01/myLib/jquery-3.2.1.min.js"></script>

</head>
<body>
<c:set var="avo" value="${avo}"/>
<c:set var="vo" value="${vo}"/>
<div class ="title">
	<div class = "contents">
			<form action="deletemenu" method="get">
			<table>
				<tr>
					<td class="info" colspan="2" style="color: white;">[ 개 인 정 보 ]</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">Name</th>
					<td>${vo.name}</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">Phone<br>Number</th>
					<td>
						${vo.pNum}
					</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">오늘 고른 메뉴</th>
					<c:if test="${empty avo.menu}">
					<td>아직 선택한 메뉴가 없습니다.</td>
					</c:if>
					<c:if test="${not empty avo.menu}">
					<td>${avo.menu}</td>
					</c:if>
				</tr>
				<tr>
					<td colspan="2" align="right" >
						<input type="submit" value="메뉴초기화">
					</td>
				</tr>
			</table>
			</form>
	</div>
</div>
</body>
</html>