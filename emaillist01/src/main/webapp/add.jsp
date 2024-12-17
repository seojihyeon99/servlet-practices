<%@page import="emaillist.vo.EmaillistVo"%>
<%@page import="emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	
	response.sendRedirect("/emaillist01"); /* redirect하지 않고 새로고침하면 계속 추가되는 문제 있다. */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록 하였습니다.</h1>
</body>
</html>