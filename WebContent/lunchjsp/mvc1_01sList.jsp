<%@page import="mvcPrac.AMemberVO"%>
<%@page import="mvcPrac.AMemberService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>** AMemberList **</title>
<%
		AMemberService service = new AMemberService();
		List<AMemberVO> list = new ArrayList<AMemberVO>();
		list = service.selectList();
%>
<style>
	table {
			text-align: center;
			width:500px;
	}
	
</style>
</head>
<body>


<h2 align="center">**회원 관리**</h2>
<table>
	<tr>
		<th> 이름 </th><th> 핸드폰번호 </th>
	</tr>
<% 		
if (list != null) {
	for (AMemberVO a : list) {
	%>
	<tr>
		<td> <%=a.getName() %> </td><td> <%=a.getpNum() %> </td>
	</tr>
	<%}
}else%> <td colspan="2">출력할 자료가 없습니다.</td>


</table>

</body>
</html>