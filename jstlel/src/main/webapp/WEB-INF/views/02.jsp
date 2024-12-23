<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVo vo4 = new UserVo();
	vo4.setId(4L);
	vo4.setName("둘리4");
	
	pageContext.setAttribute("vo", vo4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	${vo.id} <br>
	${vo.name} <br>
	
	== request scope ==== <br>
	${requestScope.vo.id} <br>
	${requestScope.vo.name} <br>

	== session scope ==== <br>
	${sessionScope.vo.id} <br>
	${sessionScope.vo.name} <br>	
	
	== application scope ==== <br>
	${applicationScope.vo.id} <br>
	${applicationScope.vo.name} <br>		
</body>
</html>