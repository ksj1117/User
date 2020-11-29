<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 등록</title>
</head>
<body>
	<h2>사용자 정보 등록</h2>
<a href = "user_list.jsp">사용자 리스트</a>

	<form method = "post" action="user_insert.jsp">
	아이디 <input type = "text" name = "id"><br>
	비밀번호 <input type = "text" name ="password"> <br>
	이름 <input type = "text" name = "name"> <br>
	전화번호 <input type = "text" name = "phone" > <br>
	이메일 <input type = "text" name = "email"> <br>
	주소 <input type = "text" name="address" > <br>
	소개 <textarea rows="5" cols="50"></textarea> <br>
	<button type = "submit">저장</button>
	<button type = "reset">리셋</button>
	</form>
	

 
</body>
</html>