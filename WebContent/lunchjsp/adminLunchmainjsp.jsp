<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			padding-top: 150px;	}


	</style>
</head>
<body>
<c:set var="admin" value="${vo}"/>

		<div class = "contents">
			<b>${admin.name}</b>님 환영합니다!<br>
			오늘도 우리의 맛있는 <br>
			점심을 위해 노력해주셔서<br>
			모두를 대표해 감사드립니다<br>
			<br>
		<img src="/LunchSelect/cssHtmlTest/image/pngegg.png" width="100px" align="middle">
		</div>
		
</body>
</html>