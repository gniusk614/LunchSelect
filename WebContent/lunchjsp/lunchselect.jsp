
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		.content{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 400x;
			position: relative;
			text-align: center;	
			padding-top: 10px;
		}
		
		hr{margin:10px;}
		
		.input1{
			top: 90%;
		
		}
		table{ 
			width: 350px;	height: 500px;
			left:50%; top:250px; 
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
<script src="/Web01/myLib/jquery-3.2.1.min.js"></script>
<script>
// 4.2)		

		function clock(){
			var hour = 12;
			var minute = 30;
			var now = new Date();
			var ss = 60-now.getSeconds();
			var mm = minute+59-now.getMinutes();
			hh = hour-1-now.getHours();
			if(mm>=60){
				hh += 1;
				mm = mm%60;
			}
	        if(ss>=60){
				mm += 1;
				ss = ss%60;
			} 

	                        // 종료 시점                     
	       	if(hh==0&&mm==0&&ss==0) location.href='/Web01/todaymenu';	
	                        // 종료 이후	
			else if(hh<0){
	           document.getElementById("clock").innerHTML = "투표가 종료 되었습니다.";
			}
	                        // 세 시간 전 ~ 종료 직전
			else if(hh<3){
				document.getElementById("clock").innerHTML = hh+":"+mm+":"+ss+" 후 종료됩니다.";
				setTimeout("clock()",1000);
	                        // 세 시간 이상 남음
			}else document.getElementById("clock").innerHTML = "시간이 많이 남았어요.";
		}
		

</script>
</head>
<body onload="clock()">
<c:set var="avo" value="${aVo}" />
<c:set var="link" value="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=미금역+"/>
	<div class ="title">
		<div class ="content">
		메뉴를 골라주세요! 
			<form action="selectmenu" method="get">
			<table>
				<tr>
					<td class="info" colspan="2" style="color: white;">[ Today's Menu ]</td>
				</tr>
				<tr>
					<th style="border-bottom: 1px solid gray;">Name</th>
					<td>${avo.name}</td>
				</tr>
				<tr style="height:130px;">
					<th style="border-bottom: 1px solid gray;">오늘의<br> 메뉴</th>
					<td>
						<c:set var="vo" value="${todaymenu}"/>
						<c:if test="${empty vo}">오늘의 메뉴가 아직 세팅되지 않았습니다.</c:if>
						<c:if test="${not empty vo}">
						메뉴를 더블클릭하면 검색정보를 볼 수 있습니다.<br><br><br>
						<c:if test="${not empty vo.menu1}">
						<input type="radio" id="menu1" name= "menu" value="${vo.menu1}"><label for="menu1"
						ondblclick="window.open('${link}${vo.menu1}')">${vo.menu1}</label>&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu2}">
						<input type="radio" id="menu2" name= "menu" value="${vo.menu2}"><label for="menu2"
						ondblclick="window.open('${link}${vo.menu2}')">${vo.menu2}</label><br>
						</c:if>
						<c:if test="${not empty vo.menu3}">
						<input type="radio" id="menu3" name= "menu" value="${vo.menu3}"><label for="menu3" 
						ondblclick="window.open('${link}${vo.menu3}')">${vo.menu3}</label>&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu4}">
						<input type="radio" id="menu4" name= "menu" value="${vo.menu4}"><label for="menu4"
						ondblclick="window.open('${link}${vo.menu4}')">${vo.menu4}</label>&nbsp;&nbsp; 
						</c:if>
						<input type="radio" id="menu5" name= "menu" value="혼자먹을게요" checked="checked"><label for="menu5">혼자먹을게요</label>&nbsp;&nbsp; 
						<br></c:if>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" >
						이 메뉴가 작성된 날짜는 ${vo.regdate} 입니다.<br>
						위 투표는 <span id="clock">종료</span>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right" >
						<input type="submit" value="전송">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>

</body>
</html>