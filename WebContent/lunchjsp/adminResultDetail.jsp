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
			}
		table th{
			border-right: 0.5px solid black;
		}
		
		/* table th{width:120px; background-color: lightgray;} */
		
		table .submenu{
			background-color: lightgray;
			border-bottom: 2px solid black;
		
		}
		.info {height: 30px; background-color: gray;}
		.food {margin: 10px; height:80px;}
		.blank{height:15px;}
	</style>

</head>

<body>
			<table>
				<tr>
				<th class="info" colspan="2" style="color: white;">[ Result ]</th>
				</tr>
				<tr class="submenu">
				<th>메뉴명</th><td>투표한사람</td>
				</tr>
				<tr style="border-bottom: 1px solid black;">
				<th>${menu}</th>
				<td><c:forEach var="list" items="${resultlist}" >
				${list.name}</c:forEach></td>
				</tr>
				<tr>
				<td colspan="2" align="right">
					<input type="button" value="뒤로가기" onclick="history.back();" />&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				</tr>
			</table>
</body>
</html>