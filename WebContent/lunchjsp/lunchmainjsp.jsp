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
			padding-top: 200px;	}


	</style>
<script src="../myLib/jquery-3.2.1.min.js"></script>
</head>
<body>
<c:set var="vo" value="${vo}"/>

		<div class = "contents">
			<b>${vo.name}</b>님 환영합니다!<br>
			오늘은 뭘 먹을까? <br>
			항상 고민만 하시지 않으셨나요?<br>
			점심 뭐먹지 페이지와 함께라면<br>
			고민하지 않으셔도 됩니다.<br>
			TodayMenu 페이지로 이동해 메뉴를 골라주세요.<br>
		</div>
</body>
</html>