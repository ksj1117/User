<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
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
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Context ctx = new InitialContext() ;
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/db_mysql"); 
	Connection con = ds.getConnection();
	
 String sql = "select * from users where id =? and password=? " ;
	PreparedStatement st = con.prepareStatement(sql);
	st.setString(1,id);
	st.setString(2,pw);	
	ResultSet rs = st.executeQuery();
	
	if(rs.next()){
		out.print("로그인 성공"); 
		session.setAttribute("id",id);
		session.setAttribute("name",rs.getString("name"));
		
	}
	else {
		
		response.sendRedirect("login_fail.jsp");
	}
	rs.close();
	st.close();
	con.close();
%>
	<br>
	<a href ="main.jsp">메인</a> 

	<a href ="logout.jsp">로그아웃 </a> <br>



</body>
</html>