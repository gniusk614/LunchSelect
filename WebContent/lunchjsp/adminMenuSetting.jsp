<%@page import="mvcPrac.AMemberJoinsMenuVO"%>
<%@page import="mvcPrac.AMemberService"%>
<%@page import="mvcPrac.AMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Today Menu Setting</title>
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

		.contents{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 800px;
			position: relative;
			text-align: center;
			padding-top: 90px;
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
 			height: 50px;
 			border-collapse: collapse;
			}

		
		table th{width:120px; background-color: lightgray;}
		
		.info {height: 30px; background-color: gray;}
		.food {margin: 10px; height:80px;}
		.blank{height:15px;}
	</style>
</head>
<body>
	<div class = "contents">
		오늘의 메뉴를 세팅해주세요.
			<form action="/LunchSelect/todaymenuinsert" method="get">
			<table>
				<tr>
					<td class="info" colspan="2" style="color: white;">메뉴 세팅</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">1번 메뉴</th>
					<td>
					<input type="text" name="menu1" value="" size="20" maxlength="10">
					</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">2번 메뉴</th>
					<td>
					<input type="text" name="menu2" value="" size="20" maxlength="10">	
					</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">3번 메뉴</th>
					<td>
					<input type="text" name="menu3" value="" size="20" maxlength="10">
					</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">4번 메뉴</th>
					<td>
					<input type="text" name="menu4" value="" size="20" maxlength="10">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						메뉴를 세팅하면 기존 투표내용은 초기화됩니다.
						<input type="submit" value="전송">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
			</form>
	</div>
</body>
</html>