<%@page import="kr.ac.baewha.is.User"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.baewha.is.UserDB"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
</head>
<body>
	<table width = "100%">
	<tr>
		<th>번호</th>  <th>id</th> <th>이름</th> <th>전화번호</th> <th>메일</th> 	
	</tr>
	


	<!-- // 데이터 가져오기
	// Class.forName("com.mysql.cj.jdbc.Driver");
	// String url = "jdbc:mysql://127.0.0.1:3306/is02?serverTimezone=UTC" ;
	// Connection conn = DriverManager.getConnection(url, "root", "1234") ;
	
	/* Context context = new InitialContext();
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/db_mysql");
	Connection conn = ds.getConnection() ;
	
	
	String sql = "select * from users" ;
	PreparedStatement st = conn.prepareStatement(sql);
	
	ResultSet rs = st.executeQuery();
	int index = 1 ;
		
	while(rs.next()) {
		*/
		-->
		<%

		//데이터 가져오는 부분을 
		UserDB userdb = UserDB.getInstance() ;
		List<User> list = userdb.getUserList() ;
		
		int index = 1 ;
		// for(int i =0 ; i<list.size(); i++ ) {Use user = list.get(i)}이 방식 ㅇㅋ <c같은 문법>
		// 자바 문법 
		for(User user : list) {
	
	%>	 

	<tr>
			<td><%=index++ %></td><td><%=user.getId() %></td>
			<td><a href="user_view.jsp?id=<%=user.getId()%>">
			         <%=user.getName() %></a>
			</td>
			<td><%=user.getPhone() %></td>
			<td><%=user.getEmail() %></td>
		</tr>
<%
	}
%>	
	</table>
	
	<a href="main.jsp">메인</a>
</body>
</html>