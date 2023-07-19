<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
	
		try {
			String url = "jdbc:mysql://localhost:3306/jspdb";
			String user = "root";
			String password = "123456";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("db connected");
		} catch (Exception e) {
			out.println("connection failed");
			out.println("SQLException :"+e.getMessage());
		} finally {
			if (conn != null)
				conn.close();
		}
	%>
</body>
</html>