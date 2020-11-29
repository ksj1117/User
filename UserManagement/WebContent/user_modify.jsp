<%@page import="kr.ac.baewha.is.UserDB"%>
<%@page import="kr.ac.baewha.is.User"%>
<%@page import="javax.sound.midi.SysexMessage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 수정</title>
</head>
<body>
<%
	// 테이블 저장 
	request.setCharacterEncoding("utf8"); // 한글 
	%>
	<jsp:useBean id = "user" class ="kr.ac.baewha.is.User"/>
	<jsp:setProperty name="user" property="*"/>
	<%
	UserDB userdb = UserDB.getInstance() ;
	boolean success = userdb.updateUser(user) ;
	String result = "";
	if (success )
		result = "수정완료";
		
		else 
			result ="수정하지 못 함" ;
		
	
	%>
		
	
	
		<h3> <%=result %></h3>
		<a href="user_list.jsp">사용자 리스트 </a>
		<br> <a href = "main.jsp">메인</a> 


</body>
</html>