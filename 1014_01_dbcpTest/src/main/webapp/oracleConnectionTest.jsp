<%@page import="com.tjoeun.dbcpTest.DBUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oracle connection</title>
</head>
<body>

<!--  
	※ 오라클 연결
	시작 버튼 => 오라클 => Run SQL Commend Line 실행 => 까만창이 열린다.
	
	※ 오라클에 접속하기
	SQL> connect system 엔터
	※ 실제로 비밀번호를 입력할 때는 문자가 화면에 표시되지 않는다.
	Enter Password : 0000 엔터
	Connected.
	
	※ 계정 만들기
	SQL> create user 계정명 identified by 0000(비밀번호); 엔터 => 11
	User created.
	
	※ 계정에 권한 부여하기
	SQL> grant connect(접속), resource(데이터 관리) to 계정명; 엔터
	Grant succeeded.
-->

<%
	Connection conn = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(url, "rok", "0000");
		out.println("연결 성공: " + conn);
	}catch(ClassNotFoundException e){
		out.println("드라이버 클래스가 없거나 읽어올 수 없습니다.");
	}catch(SQLException e){
		out.println("데이터베이스 접속정보가 올바르지 않습니다.");
	} 
	
	
	
%>

</body>
</html>




































