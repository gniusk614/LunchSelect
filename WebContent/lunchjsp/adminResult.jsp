<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

		.contents{
			font-family: 'Cafe24SsurroundAir';
			font-size: 15pt;
			width: 800px;
			position: relative;
			text-align: center;
			padding-top: 200px;
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
 			border: 1px solid black;
			}

		
		/* table th{width:120px; background-color: lightgray;} */
		
		table .submenu{
			background-color: lightgray;
			border-bottom: 2px solid black;
		
		}
		.info {height: 30px; background-color: gray;}
		.food {margin: 10px; height:80px;}
		.blank{height:15px;}
		
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
		
		
	</style>
<script src="myLib/jquery-3.2.1.min.js"></script>
</head>

<body>
			<table style="border: 1px solid black;">
				<tr>
				<th class="info" colspan="2" style="color: white;">[ Result ]</th>
				</tr>
				<tr class="submenu">
				<th>메뉴명</th><td>투표수</td>
				</tr>
				<c:forEach var="list" items="${result}" >
				<tr>
				<c:if test="${not empty list}">
				<th>
				<c:if test="${vo.pNum=='admin'}">
				<a href="resultdetail?menu=${list.menu}">${list.menu}</a></c:if>
				<c:if test="${vo.pNum!='admin'}">${list.menu}</c:if>
				</th><td>${list.count}</td>
				</c:if>
				<c:if test="${empty list}">
				<td colspan="2">아직 투표한 사람이 없습니다.</td>
				</c:if>
				</tr>
				</c:forEach>
			</table>
</body>
</html>