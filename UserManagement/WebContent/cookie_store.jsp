<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("name","icebear");
	Cookie c2 = new Cookie("age","11");
	
	response.addCookie(c1);
	response.addCookie(c2);

%>
<h2>쿠키를 전송했습니다.</h2>


</body>
</html>