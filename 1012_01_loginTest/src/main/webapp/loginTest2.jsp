<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- include 디렉티브를 사용해서 중복되는 jsp코드 삽입하기 -->
	<%@ include file="./loginTest.jsp" %>
	<hr/>
	<!-- inclue 액션 태그를 사용해서 중복되는 jsp 코드 삽입하기 -->
	<jsp:include page="./loginTest.jsp"></jsp:include>
</body>
</html>












































