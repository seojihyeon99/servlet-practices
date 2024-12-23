<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:when test='${param.color == "red"}'>
		<h1 style='color: #FF0000'>Hello World</h1>	
	</c:when>
	<c:when test='${param.color == "green"}'>
		<h1 style='color: #00FF00'>Hello World</h1>	
	</c:when>	
	<c:when test='${param.color == "blue"}'>
		<h1 style='color: #0000FF'>Hello World</h1>	
	</c:when>	
	<c:otherwise>
		<h1 style='color: #000000'>Hello World</h1>	
	</c:otherwise>
</body>
</html>