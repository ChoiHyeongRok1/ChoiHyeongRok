<%@page import="com.tjoeun.dbcpTest.DBUtil"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Commons DBCP 연결하기</title>
</head>
<body>

<%
//	lib 폴더에 commons-dbcp-1.4.jar, commons-pool-1.5.7.jar, mysql-connector-java-5.1.27-bin.jar 파일을 복사해 넣는다.
//	=> commonsDBCP 드라이버
//	scr/main/java에 *.jocl 파일을 작성한다. => 데이터베이스 연결 정보
//	oracle => <string value = "jdbc:oracle:thin:@localhost:1521:xe"/>
	Connection conn = DBUtil.getCommonsDBCPConnection();
	out.println("연결성공: " + conn + "<br/>");
	DBUtil.close(conn);
%>

</body>
</html>
































