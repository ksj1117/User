<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 관리(메인)</title>
</head>
<body> 

	<%	
		String id = (String) session.getAttribute("id");
	if(id==null){
		response.sendRedirect("login_form.jsp");
	}
		String name = (String) session.getAttribute("name");
	
	%>
	
	<h3>메인</h3>
	<%=name %>(<%=id %>)<br>
	<br>
	<a href ="user_list.jsp">사용자 리스트 </a> <br>
	<a href ="user_insert_form.jsp">사용자 등록 </a> <br>
	<a href ="user_modify_form2.jsp">사용자 수정 </a> <br>

	<a href ="logout.jsp">로그아웃</a>

</body>
</html>