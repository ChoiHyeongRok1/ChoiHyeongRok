<%@page import="com.tjoeun.service.FreeboardCommentService"%>
<%@page import="com.tjoeun.vo.FreeboardCommentList"%>
<%@page import="com.tjoeun.service.FreeboardService"%>
<%@page import="com.tjoeun.vo.FreeboardList"%>
<%@page import="com.tjoeun.vo.FreeboardVO"%>
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
	int idx = Integer.parseInt(request.getParameter("idx"));
	int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	String job = request.getParameter("job");
	
	FreeboardService service = FreeboardService.getInstance();
//	메인글 1건을 얻어오는 메소드를 호출한다.
	FreeboardVO vo = service.selectByIdx(idx);
//	out.println(vo);

//	브라우저에 출력할 메인글이 저장된 객체, 작업 후 돌아갈 페이지 번호, 줄바꿈에 사용할 이스케이프 
//	시퀀스("\r\n")를 request 영역에 저장한다.
	request.setAttribute("vo", vo);
	request.setAttribute("currentPage", currentPage);
	request.setAttribute("enter", "\r\n");
	
//	job에 contentView가 넘어왔을 경우 댓글 목록을 읽어와서 request 영역에 저장시킨다.
	if(job.equals("contentView")){
		FreeboardCommentList freeboardCommentList = FreeboardCommentService.getInstance().selectCommentList(idx);
		request.setAttribute("freeboardCommentList", freeboardCommentList);
	}
	
	pageContext.forward(job + ".jsp");
%>
</body>
</html>






























