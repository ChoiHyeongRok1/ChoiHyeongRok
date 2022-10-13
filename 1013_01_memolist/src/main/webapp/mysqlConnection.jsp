<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = null;
	
//	mysql 드라이버 클래스를 읽어온다.
	try{
		Class.forName("com.mysql.jdbc.Driver"); // 5.x 사용자
		String url = "jdbc:mysql://localhost:3306/javaam?useUnicode=true&characterEncoding=UTF-8";
		conn = DriverManager.getConnection(url, "root", "0000");
		
//		데이터베이스와 연결이 되었으므로 데이터베이스를 사용한다.
		out.println("연결성공: " + conn + "<br/>");
	}catch(ClassNotFoundException e){
		out.println("드라이버 클래스가 없거나 읽어올 수 없습니다.");
	}catch(SQLException e){
		out.println("데이터베이스 접속 정보가 올바르지 않습니다.");
	}finally{
		if(conn != null){
			try{
				conn.close();				
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
%>
</body>
</html>





























