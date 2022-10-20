<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.tjoeun.vo.GuestbookVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.vo.GuestbookList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 보기</title>
<link rel="stylesheet" href="./guestbook.css"/>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
//	list.jsp에서 1페이지 분량의 글 목록과 페이징 작업에 사용할 변수를 저장해서 request 영역에 저장한
//	GuestbookList 클래스 객체를 받는다.
//	request 영역에 저장되는 데이터 타입은 Object 타입이므로 반드시 데이터를 얻어온 다음에 형변환 시켜야 한다.
	GuestbookList guestbookList = (GuestbookList) request.getAttribute("guestbookList");
//	out.println(guestbookList.getList());

//	브라우저에 출력할 1페이지 분량의 글목록(guestbookList.getList())만 꺼내서 별도의 ArrayList를 만들어 사용한다.
	ArrayList<GuestbookVO> view = guestbookList.getList();
%>

	<table width="1000" align="center" border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th>방명록 보기</th>
		</tr>
		<tr>
			<td align="right">
				<%=guestbookList.getTotalCount()%>개(<%=guestbookList.getCurrentPage()%>/<%=guestbookList.getTotalPage()%>)
			</td>
		</tr>
		<tr>
			<td>
<%
	if(view.size() == 0){
		out.println("<marquee>테이블에 저장된 글이 없습니다.</marquee>");
	}else{
		// 컴퓨터 시스템의 날짜와 시간을 얻어온다.
		Date date = new Date();
		// 날짜, 시간 서식을 만든다.
		SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy.MM.dd(E)");
		
		for(GuestbookVO vo : view){
%>
				<table class="table" width="99%" align="center" border="1" cellpadding="5" cellspacing="0">
					<tr>
						<td>
							<%=vo.getIdx()%>. <%=vo.getName().replace("<", "&lt;").replace(">", "&gt;")%>(<%=vo.getIp()%>) 님이 
							
<%
/*
		if(date.getYear() == vo.getWriteDate().getYear() && date.getMonth() == vo.getWriteDate().getMonth() && date.getDate() == vo.getWriteDate().getDate()){
			out.println(sdf1.format(vo.getWriteDate()));
		}else{
			out.println(sdf2.format(vo.getWriteDate()));	
		}
*/
		if(sdf2.format(date).equals(sdf2.format(vo.getWriteDate()))){
			out.println(sdf1.format(vo.getWriteDate()));
		}else{
			out.println(sdf2.format(vo.getWriteDate()));	
		}
%>							
							
							에 남긴글
							
							<!-- 수정 삭제 버튼 추가 -->
							<input 
							class="button" 
							type="button" 
							value="수정" 
							onclick="location.href='selectByIdx.jsp?idx=<%=vo.getIdx()%>&currentPage=<%=guestbookList.getCurrentPage()%>&job=update'">
							<input 
							class="button" 
							type="button" 
							value="삭제" 
							onclick="location.href='selectByIdx.jsp?idx=<%=vo.getIdx()%>&currentPage=<%=guestbookList.getCurrentPage()%>&job=delete'"><br/>
							
							<%=vo.getMemo().replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br/>") %>
						</td>
					</tr>
				</table>
<%
		}
	}
%>
					
<% 
	int currentPage = guestbookList.getCurrentPage();
	int startPage = guestbookList.getStartPage();
	int endPage = guestbookList.getEndPage();
	int totalPage = guestbookList.getTotalPage();
	if (currentPage > 1){
%>
			<button class="button" type="button" onclick="location.href='?currentPage=1'" title="첫페이지로 이동합니다.">처음</button>	
<%		
	}else{
%>
			<button class="button button2" type="button" disabled="disabled" title="이미 첫페이지입니다.">처음</button>
<%		
	}

//	10페이지 앞으로
//	startPage가 1보다 크다면 이전 10페이지로 이동할 수 있다.
	if (startPage > 1){
%>
			<button class="button" type="button" onclick="location.href='?currentPage=<%=startPage-1%>'" title="이전페이지로 이동합니다.">이전</button>	
<%		
	}else{
%>
			<button class="button button2" type="button" disabled="disabled" title="이미 첫페이지입니다.">이전</button>
<%		
	}

	for(int i=startPage; i<=endPage; i++){
		if(currentPage == i){
%>
			<button class="button button2" type="button" disabled="disabled"><%=i%></button>		
<%
		}else{
%>
			<button class="button" type="button" onclick="location.href='?currentPage=<%=i%>'"><%=i%></button>		
<%		
		}
	}

//	10페이지 뒤로
//	endPage가 totalPage보다 작다면 다음 10페이지로 이동할 수 있다.
	if (endPage < totalPage){
%>
			<button class="button" type="button" onclick="location.href='?currentPage=<%=endPage+1%>'" title="다음페이지로 이동합니다.">다음</button>	
<%		
	}else{
%>
			<button class="button button2" type="button" disabled="disabled" title="이미 마지막 페이지입니다.">다음</button>
<%		
	}

//	마지막으로
//	currentPage가 totalPage보다 작다면 마지막으로 이동할 수 있다.
	if (currentPage < totalPage){
%>
			<button class="button" type="button" onclick="location.href='?currentPage=<%=totalPage%>'" title="마지막 페이지로 이동합니다.">마지막</button>	
<%		
	}else{
%>
			<button class="button button2" type="button" disabled="disabled" title="이미 마지막 페이지입니다.">마지막</button>
<%		
	}
%>
				
					
			</td>
		</tr>
		
		<tr>
			<td align="right">
				<input class="button" type="button" value="글쓰기" onclick="location.href='insert.jsp'">
			</td>
		</tr>
		
	</table>
</body>
</html>



























