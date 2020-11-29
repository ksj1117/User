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
 
	<%
		request.setCharacterEncoding("utf8");
		String id = request.getParameter("id");
		
	Context ctx = new InitialContext() ;
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/db_mysql"); 
	Connection con = ds.getConnection();
	String sql = "select * from users where id = ? " ;
	PreparedStatement st = con.prepareStatement(sql);
	st.setString(1,id);
	// select일 경우 쿼리 
	ResultSet rs = st.executeQuery();
	
	if(rs.next()){
		//찾았을 때 
%>	
<a href="user_list.jsp">사용자 리스트 </a><hr>
		ID : <%=id %><br>
		이름 : <%=rs.getString("name") %><br>
		전화번호:<%=rs.getString("phone") %> <br>
		email :<%=rs.getString("email") %> <br>
		 
		
<%
		
	} else {
		//없을때
	out.print("<h3>찾을 수 없음<h3>");	
	} 
	rs.close();
	st.close();
	con.close();
	%>


<a href ="user_modify_form2.jsp?id=<%=id %>">수정</a>
<a href="user_delete.jsp?id=<%=id %>">삭제</a>


</body>
</html>