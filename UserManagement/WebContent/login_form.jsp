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
	// 로그인 되어있을 경우 메인페이지로 이동 
		String id = (String)session.getAttribute("id");
	if(id!=null){
		response.sendRedirect("main.jsp");
	}
		
	

%>
	<form method ="post"action="login.jsp"">
	
	ID  <input type="text" name="id" > <br>
	비밀번호  <input type = "password" name ="pw"> <br>
	<button type= "submit" >전송</button>
	
	
	
	</form>


</body>
</html>