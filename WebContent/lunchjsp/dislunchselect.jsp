
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
<script>
// 4.2)		
	function setClock() {
      	var now = new Date();
/* 		 var t = "Now: "
	       +now.getFullYear()+"년"+(now.getMonth()+1)+"월"+now.getDate()+"일_"
	       +now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
	    document.getElementById("clock").innerHTML=t;
	    // ** 시계처럼 표시하려면 1초 단위로 재호출 해야함 */
	    
 	    var t = (12-now.getHours())+"시 "+(60-now.getMinutes())+"분 "+(60-now.getSeconds()+"초");
	    document.getElementById("clock").innerHTML=t;
	    // ** 시계처럼 표시하려면 1초 단위로 재호출 해야함
	    
	    setTimeout("setClock()",1000); // 실행주기: 1/1000초
  	 } //setClock
  	 
</script>

</head>
<body onload="setClock()">
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
						<input type="radio" id="menu1" name= "menu" value="${vo.menu1}" disabled="disabled"><label for="menu1"
						ondblclick="window.open('${link}${vo.menu1}')">${vo.menu1}</label>&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu2}">
						<input type="radio" id="menu2" name= "menu" value="${vo.menu2}" disabled="disabled"><label for="menu2"
						ondblclick="window.open('${link}${vo.menu2}')">${vo.menu2}</label><br>
						</c:if>
						<c:if test="${not empty vo.menu3}">
						<input type="radio" id="menu3" name= "menu" value="${vo.menu3}" disabled="disabled"><label for="menu3" 
						ondblclick="window.open('${link}${vo.menu3}')">${vo.menu3}</label>&nbsp;&nbsp;
						</c:if>
						<c:if test="${not empty vo.menu4}">
						<input type="radio" id="menu4" name= "menu" value="${vo.menu4}" disabled="disabled"><label for="menu4"
						ondblclick="window.open('${link}${vo.menu4}')">${vo.menu4}</label>&nbsp;&nbsp; 
						</c:if>
						<input type="radio" id="menu5" name= "menu" value="혼자먹을게요"  disabled="disabled"><label for="menu5">혼자먹을게요</label>&nbsp;&nbsp; 
						<br></c:if>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" >
						이 메뉴가 작성된 날짜는 ${vo.regdate} 입니다.<br>
						투표가 종료 되었습니다.
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right" >
						<input type="submit" value="전송" disabled="disabled">
						<input type="reset" value="취소" disabled="disabled">
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>

</body>
</html>