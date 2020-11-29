<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// session.removeAttribute("id");
	// session.removeAttribute("name"); 해당하는 정보 지움
	
	session.invalidate(); // 세션에 들어있응 모든 정보 삭제 

%>



<h3>로그아웃되었습니다.</h3>
<a href="login_form.jsp">로그인 </a>

</body>
</html>