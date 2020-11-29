<%@page import="kr.ac.baewha.is.UserDB"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 삭제</title>
</head>
<body>
  <%
	// 테이블 저장 
	request.setCharacterEncoding("utf8"); // 한글 
	%>
	<jsp:useBean id = "user" class ="kr.ac.baewha.is.User"/>
	<jsp:setProperty name="user" property="*"/>
		<%
	UserDB db = UserDB.getInstance() ;
	boolean success = db.deleteUser(user) ;
	String result = "";
	if (success)
		result = "삭제완료";
	
		else 
			result ="삭제하지 못 함" ;

	%>
		
		<br>
		<%=result %> <br>
		<a href="user_list.jsp">사용자 리스트 </a>
		
	


</body>
</html>