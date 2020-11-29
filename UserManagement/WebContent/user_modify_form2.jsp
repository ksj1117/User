<%@page import="kr.ac.baewha.is.User"%>
<%@page import="kr.ac.baewha.is.UserDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사용자 정보 수정</h2>
<hr>
 <a href="user_list.jsp">사용자 리스트</a>
 <hr>
	<jsp:useBean id ="user" class="kr.ac.baewha.is.User"/>
	
	<%
		request.setCharacterEncoding("utf8");
		String id = request.getParameter("id");
		
		UserDB userdb = UserDB.getInstance() ;
		boolean found = userdb.getUser2(id,user);
		if (found) {
%>	

<form method="post" action="user_modify.jsp">
	아이디 <input type = "text" name = "id" value ="<jsp:getProperty property="id" name="user"/>"><br>
	비밀번호 <input type = "text" name ="pw "> <br>
	이름 <input type = "text" name = "name" value ="<jsp:getProperty property="name" name="user"/>"><br>
	전화번호 <input type = "text" name = "phone" value ="<%=user.getPhone() %>" > <br>
	이메일 <input type = "text" name = "email" value ="<%=user.getEmail() %>" ><br>
	주소 <input type = "text" name = "address" value ="<%=user.getAddress() %>" ><br>
	소개 <input type = "text" name = "intro" value ="<%=user.getIntro() %>" ><br>
	
	
 	<button type ="submit">저장</button>
 	<button type ="reset">리셋</button>

	 </form>
		
<%
	} else {
		//없을때
	out.print("<h3>찾을 수 없음<h3>");	
	} 

	%>





</body>
</html>