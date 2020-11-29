<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 사용자 삭제 </title>
</head>
<body>
	<h2>사용자 정보 삭제 </h2>
	<a href = "user_list.jsp"> 사용자 리스트 </a> 
	<form action="user_delete_view.jsp" method = "post">
		아이디 : <input type = "text" name ="id" > 
		<button type = "submit">삭제하기</button>

	</form>
		<br>
	<a href = "main.jsp">메인으로</a>
</body>
</html>
