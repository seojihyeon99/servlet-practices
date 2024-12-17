<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join.jsp" method="post">
		<label>이메일:</label>
		<input type="text" name="email" value="">
		<br><br>
		
		<label>비밀번호:</label>
		<input type="password" name="password" value="">
		<br><br>
		
		<label>생년:</label>
		<select name="birthYear">
			<option value="2000">2000년</option>
			<option value="2001">2001년</option>
			<option value="2002">2002년</option>
		</select>
		<br><br>
		
		<label>성별:</label>
		<input type="radio" name="gender" value="male"> 남
		<input type="radio" name="gender" value="female" checked='checked'> 여
		<br><br>
		
		<label>자기소개:</label>
		<br>
		<textarea name="profile">abcdfeg</textarea>
		<br><br>
		
		<label>취미:</label>
		<input type="checkbox" name="hobby" value="coding"> 코딩
		<input type="checkbox" name="hobby" value="cooking"> 요리
		<input type="checkbox" name="hobby" value="swimming"> 수영
		<input type="checkbox" name="hobby" value="reading"> 독서
		<input type="checkbox" name="hobby" value="drinking"> 술마시기
		<br><br>
		
		<input type="submit" value="가입">
	</form>
</body>
</html>