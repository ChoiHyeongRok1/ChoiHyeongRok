<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" integrity="sha384-xeJqLiuOvjUBq3iGOjvSQSIlwrpqjSHXpduPd6rQpuiM3f5/ijby8pCsnbu5S81n" crossorigin="anonymous">

</head>
<body>
	
	<div class="m-3">
		<table class="table" style="width: 1000px; margin-left: auto; margin-right: auto;">
			<tr class="table-success">
				<th colspan="5" style="font-size: 30px; text-align: center;">자유게시판 보기</th>
			</tr>
			<tr>
				<td colspan="5" align="right">
					${freeboardList.totalCount}(${freeboardList.currentPage} / ${freeboardList.totalPage})
				</td>
			</tr>
			<tr class="table-primary">
				<th style="text-align: center; width: 100px;">글번호</th>
				<th style="text-align: center; width: 500px;">제목</th>
				<th style="text-align: center; width: 150px;">이름</th>
				<th style="text-align: center; width: 150px;">작성일</th>
				<th style="text-align: center; width: 100px;">조회수</th>
			</tr>
			
			<!-- 오늘 날짜를 기억하는 Date 클래스 객체를 useBean으로 만든다. -->
			
			<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
			<%-- ${date} --%>
			
			<!-- 공지글이 있으면 출력한다. -->
			<c:if test="${currentPage == 1}">
				<c:forEach var="vo" items="${notice}">
					<tr class="table-warning">
						<td align="center">
							<img alt="notice" src="./images/notice.png">
						</td>
						<td>
							<c:set var="subject" value="${fn:replace(vo.subject, '<', '&lt;')}"></c:set>
							<c:set var="subject" value="${fn:replace(vo.subject, '>', '&gt;')}"></c:set>
							
							<a href="increment.jsp?idx=${vo.idx}&currentPage=${freeboardList.currentPage}">
								${vo.subject}(${vo.commentCount})
							</a>
							
							<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
								<img alt="new" src="./images/ic_new.gif">
							</c:if>
							
						</td>
						<td align="center">
							<!-- 이름에 태그를 적용할 수 없도록 한다. -->
							<c:set var="subject" value="${fn:replace(vo.name, '<', '&lt;')}"></c:set>
							<c:set var="subject" value="${fn:replace(vo.name, '>', '&gt;')}"></c:set>
							${vo.name}
						</td>
						<td align="center">
							<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
								<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"/>
							</c:if>
							<c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date}">
								<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
							</c:if>
						</td>
						<td align="center">
							${vo.hit}
						</td>
					</tr>
				</c:forEach>
			</c:if>
			
			<!-- 메인글을 출력한다. -->
			<!-- list.jsp에서 request 영역에 저장한 freeboardList에서 1페이지 분량의 글이 저장된 ArrayList를 꺼내온다. -->
			<c:set var="list" value="${freeboardList.list}"></c:set>
			
			<!-- 메인글이 1건도 없으면 글이 없다고 출력한다. -->
			<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="5">
						<marquee>테이블에 저장된 글이 없습니다.</marquee>
					</td>
				</tr>
			</c:if>
			<!-- 메인글이 있으면 메인글의 개수만큼 반복하며 글 제목을 출력한다. -->
			<c:if test="${list.size() != 0}">
				<c:forEach var="vo" items="${list}">
					<tr>
						<td align="center">
							<i class="bi bi-android2"></i>
							${vo.idx}
						</td>
						<td>
							<!-- 제목에 tag를 적용할 수 없게 한다. -->
							<c:set var="subject" value="${fn:replace(vo.subject, '<', '&lt;')}"></c:set>
							<c:set var="subject" value="${fn:replace(vo.subject, '>', '&gt;')}"></c:set>
							
							<!-- 제목에 하이퍼링크를 걸어준다. -->
							<a href="increment.jsp?idx=${vo.idx}&currentPage=${freeboardList.currentPage}">
								${vo.subject}(${vo.commentCount})
							</a>
							
							<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
								<img alt="new" src="./images/ic_new.gif">
							</c:if>
							
							<!-- 조회수가 일정 횟수를 넘어서면 hot 아이콘 이미지를 표시한다. -->
							<c:if test="${vo.hit > 10}">
								<img alt="hot" src="./images/hot.gif">
								<i class="bi bi-apple"></i>
							</c:if>
						</td>
						<td align="center">
							<!-- 이름에 태그를 적용할 수 없도록 한다. -->
							<c:set var="subject" value="${fn:replace(vo.name, '<', '&lt;')}"></c:set>
							<c:set var="subject" value="${fn:replace(vo.name, '>', '&gt;')}"></c:set>
							${vo.name}
						</td>
						<td align="center">
							<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
								<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"/>
							</c:if>
							<c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date}">
								<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
							</c:if>
						</td>
						<td align="center">
							${vo.hit}
						</td>
					</tr>
				</c:forEach>
			</c:if>
			
		<tr>
			<td align="center" colspan="5">
				<!-- 처음으로 -->
				<c:if test="${freeboardList.currentPage > 1}">
					<button class="button" type="button" onclick="location.href='?currentPage=1'" title="첫페이지로 이동합니다.">처음</button>
				</c:if>
				<c:if test="${freeboardList.currentPage <= 1}">
					<button class="button button2" type="button" disabled="disabled" title="이미 첫페이지입니다.">처음</button>
				</c:if>
				<c:if test="${freeboardList.startPage > 1}">
					<button class="button" type="button" onclick="location.href='?currentPage=${freeboardList.startPage - 1}'" title="이전페이지로 이동합니다.">이전</button>
				</c:if>
				<c:if test="${freeboardList.startPage <= 1}">
					<button class="button button2" type="button" disabled="disabled" title="이미 첫페이지입니다.">이전</button>
				</c:if>
				<c:forEach var="i" begin="${freeboardList.startPage}" end="${freeboardList.endPage}">
					<c:if test="${freeboardList.currentPage == i}">
						<button class="button button2" type="button" disabled="disabled">${i}</button>
					</c:if>
					<c:if test="${freeboardList.currentPage != i}">
						<button class="button" type="button" onclick="location.href='?currentPage=${i}'">${i}</button>
					</c:if>
				</c:forEach>
				<c:if test="${freeboardList.endPage < freeboardList.totalPage}">
					<button class="button" type="button" onclick="location.href='?currentPage=${freeboardList.endPage+1}'" title="다음페이지로 이동합니다.">다음</button>
				</c:if>
				<c:if test="${freeboardList.endPage >= freeboardList.totalPage}">
					<button class="button button2" type="button" disabled="disabled" title="이미 마지막 페이지입니다.">다음</button>
				</c:if>
				<c:if test="${freeboardList.currentPage < freeboardList.totalPage}">
					<button class="button" type="button" onclick="location.href='?currentPage=${freeboardList.totalPage}'"title="마지막 페이지로 이동합니다.">마지막</button>	
				</c:if>
				<c:if test="${freeboardList.currentPage >= freeboardList.totalPage}">
					<button class="button button2" type="button" disabled="disabled" title="이미 마지막 페이지입니다.">마지막</button>
				</c:if>
				
			</td>
		</tr>
		<tr>
			<td align="right" colspan="5">
				<input class="button" type="button" value="글쓰기" onclick="location.href='insert.jsp'">
			</td>
		</tr>
			
		</table>
	</div>
	
</body>
</html>






























