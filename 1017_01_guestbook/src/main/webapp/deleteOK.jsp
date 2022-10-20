<%@page import="com.tjoeun.service.DeleteService"%>
<%@page import="com.tjoeun.vo.GuestbookVO"%>
<%@page import="com.tjoeun.service.SelectService"%>
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
	request.setCharacterEncoding("UTF-8");
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
%>

	<jsp:useBean id="vo" class="com.tjoeun.vo.GuestbookVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>
	
<%
//	삭제할 글의 비밀번호와 삭제하기 위해 입력한 비밀번호를 비교하기 위해 삭제할 글을 얻어온다.
	GuestbookVO original = SelectService.getInstance().selectByIdx(vo.getIdx());

//	oracle을 필드 선언시 데이터 타입을 char로 선언하면 필드의 크기보다 입력된 문자의 크기가 적을 때
//	남는 자리가 모두 공백으로 리턴된다.
//	테이블을 설계할 때 char 대신 varchar2로 선언한다.
//	이미 char로 설계된 상태라면 trim() 메소드로 불필요한 빈 칸을 제거해서 사용한다.
	
	out.println("<script>");
	if(original.getPassword().trim().equals(vo.getPassword())){
		DeleteService.getInstance().delete(original.getIdx());
		out.println("alert('" + original.getIdx() + "번 글 삭제완료')");
	}else{
		// 비밀번호가 일치하지 않으면 오류 메시지를 출력한다.
		out.println("alert('비밀번호가 일치하지 않습니다.')");
	}
	out.println("location.href='list.jsp?currentPage="+ currentPage +"'");
	out.println("</script>");
	
%>
</body>
</html>


























