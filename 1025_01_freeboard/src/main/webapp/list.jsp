<%@page import="com.tjoeun.vo.FreeboardCommentVO"%>
<%@page import="com.tjoeun.service.FreeboardCommentService"%>
<%@page import="com.tjoeun.vo.FreeboardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.vo.FreeboardList"%>
<%@page import="com.tjoeun.service.FreeboardService"%>
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
	
	
	int currentPage = 1;
	try{
		currentPage = Integer.parseInt(request.getParameter("currentPage"));		
	} catch(NumberFormatException e){
		
	}
	
	FreeboardService service = FreeboardService.getInstance();
	FreeboardCommentService commentService = FreeboardCommentService.getInstance();
	
	ArrayList<FreeboardVO> notice = service.selectNotice();
	
	FreeboardList freeboardList = service.selectList(currentPage);
	
	for (FreeboardVO vo : notice){
		vo.setCommentCount(commentService.commentCount(vo.getIdx()));
	}
	for (FreeboardVO vo : freeboardList.getList()){
		vo.setCommentCount(commentService.commentCount(vo.getIdx()));
	}
	
	request.setAttribute("notice", notice);
	request.setAttribute("freeboardList", freeboardList);
	request.setAttribute("currentPage", currentPage);
	pageContext.forward("listView.jsp");
	
%>
</body>
</html>













