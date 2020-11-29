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
<title>사용자 등록 결과</title>
</head>
<body>
	<% request.setCharacterEncoding("utf8"); %>
	<jsp:useBean id="user" class = "kr.ac.baewha.is.User" scope ="page" />
	 <jsp:setProperty name="user" property="*"  />
	
	
	<%
	String result ;
	UserDB userdb = UserDB.getInstance() ;
	if (userdb.insertUser(user)) result = "사용자 정보를 등록하였습니다." ;
	else 	result = "사용자 정보를 등록하지 못하였습니다." ;


	%>

		<h3> <%=result %></h3>
		<br> <a href = "main.jsp">메인</a> <a href = "user_list.jsp">사용자 리스트</a>
	


</body>
</html>