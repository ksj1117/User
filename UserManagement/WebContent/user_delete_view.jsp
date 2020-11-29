<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보(삭제)</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf8");
	String id = request.getParameter("id");
	String url = "jdbc:mysql://127.0.0.1:3306/is02?serverTimezone=UTC" ;
	Class.forName("com.mysql.cj.jdbc.Driver") ;
	Connection conn = DriverManager.getConnection(url,"root","1234");
	 
	String sql = "select * from users where id = ?" ;
	
	PreparedStatement st = conn.prepareStatement(sql);
	st.setString(1,id);
	
	ResultSet rs = st.executeQuery();
	String name= "", phone="", email="" ; // 화면에 보여줄 것
	if (rs.next()){
		name = rs.getString("name") ;phone = rs.getString("phone") ;
		email = rs.getString("email") ;
	}else 
	{
		name = "해당 정보가 없음" ;
	}
	
	rs.close();
	conn.close();
	st.close();
	
	%>
	<a href = "user.list.jsp">사용자 리스트</a> <br>
	id : <%=id %> <br>
	이름 : <%=name %> <br>
	전화번호 : <%=phone %><br>
	이메일 : <%=email %> <br>
	<a href = "user_delete.jsp?id=<%=id%>">삭제하기</a>


</body>
</html>