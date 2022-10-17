<%@page import="com.tjoeun.dbcpTest.DBUtil"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomcat DBCP 연결하기</title>
</head>
<body>
<% 
//	lib 폴더에 tomcat-dbcp.jar 파일을 복사해 넣는다. => tomcatDBCP 드라이버
//	META-INF 폴더에 context.xml 파일을 만든다. => 데이터베이스 연결정보
	
	Connection conn = DBUtil.getTomcatDBCPConnection();
	out.println("연결성공: " + conn + "<br/>");
	DBUtil.close(conn);
%>
</body>
</html>





















