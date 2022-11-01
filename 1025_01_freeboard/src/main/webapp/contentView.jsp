<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" 
integrity="sha384-xeJqLiuOvjUBq3iGOjvSQSIlwrpqjSHXpduPd6rQpuiM3f5/ijby8pCsnbu5S81n" crossorigin="anonymous">
<script type="text/javascript" src="./js/setting.js" defer="defer"></script>
</head>
<body>
	
	<div class="m-3">
		<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
			<tr class="table-success">
				<th colspan="4" style="font-size: 30px; text-align: center;">게시글 보기</th>
			</tr>
			<tr class="table-light">
				<th style="text-align: center; width: 150px;">글번호</th>
				<th style="text-align: center; width: 200px;">이름</th>
				<th style="text-align: center; width: 200px;">작성일</th>
				<th style="text-align: center; width: 150px;">조회수</th>
			</tr>
			<tr>
				<td align="center">
					${vo.idx}
				</td>
				<td align="center">
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
			<tr>
				<th class="align-middle">제목</th>
				<td colspan="3">
					<c:set var="subject" value="${fn:replace(vo.subject, '<', '&lt;')}"></c:set>
					<c:set var="subject" value="${fn:replace(vo.subject, '>', '&gt;')}"></c:set>
					${vo.subject}
				</td>
			</tr>
			<tr>
				<th class="align-middle">내용</th>
				<td colspan="3">
					<c:set var="content" value="${fn:replace(vo.content, '<', '&lt;')}"></c:set>
					<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"></c:set>
					<c:set var="content" value="${fn:replace(content, enter, '<br/>')}"></c:set>
					${content}
				</td>
			</tr>
			<tr class="table-light">
				<td colspan="4" align="center">
					<input class="btn btn-primary btn-sm" type="button" value="수정하기" onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=update'">
					<input class="btn btn-danger btn-sm" type="button" value="삭제하기" onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=delete'">
					<input class="btn btn-warning btn-sm" type="button" value="돌아가기" onclick="location.href='list.jsp?currentPage=${currentPage}'">
				</td>
			</tr>
		</table>
	</div>
	
	<hr style="color: red; width: 700px; margin-left: auto; margin-right: auto;"/>
	
	<!-- 댓글 폼 -->
	<form class="m-3" action="commentOK.jsp" method="post" name="commentForm">
		<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
			<tr class="table-primary">
				<th colspan="4" style="font-size: 30px; text-align: center;">댓글보기</th>
			</tr>
			
			<tr>
				<td colspan="4">
					idx: <input type="text" name="idx" value="${vo.idx}" size="1">
					gup: <input type="text" name="gup" value="${vo.idx}" size="1">
					mode: <input type="text" name="mode" value="1" size="1">
					currentPage: <input type="text" name="currentPage" value="${currentPage}" size="1">
					ip: <input type="text" name="ip" value="${pageContext.request.remoteAddr}" size="10"> 
				</td>
			</tr>
			
			<tr>
				<th class="align-middle" style="width: 100px; text-align: center;">
					<label for="name">이름</label>
				</th>
				<th style="width: 250px;">
					<input id="name" class="form-control form-control-sm" type="text" name="name">
				</th>
				<th class="align-middle" style="width: 100px; text-align: center;">
					<label for="password">비밀번호</label>
				</th>
				<th style="width: 250px;">
					<input id="password" class="form-control form-control-sm" type="text" name="password">
				</th>
			</tr>
			
			<tr>
				<th class="align-middle" style="width: 100px; text-align: center;">
					<label for="content">내용</label>
				</th>
				<th colspan="3" style="width: 600px;">
					<textarea id="content" class="form-control form-control-sm" 
					rows="3" name="content" style="resize: none;"></textarea>
				</th>
			</tr>
			<tr class="table-info">
				<td colspan="4" align="center">
					<input class="btn btn-primary btn-sm" type="submit" value="댓글저장"
					style="font-size: 13px;" name="commentBtn">
					<input class="btn btn-danger btn-sm" type="button" value="다시쓰기"
					style="font-size: 13px;" onclick="setting(0, 1, '댓글저장', '', '')">
				</td>
			</tr>
			
			<!-- 댓글을 출력한다. -->
			<c:set var="comment" value="${freeboardCommentList.list}"></c:set>
				
				<!-- 댓글이 없는 경우 -->
				<c:if test="${comment.size() == 0}">
					<tr>
						<td colspan="4">
							<marquee>댓글이 없습니다.</marquee>
						</td>
					</tr>
				</c:if>
				<!-- 댓글이 있는 경우 -->
				<c:if test="${comment.size() != 0}">
					<c:forEach var="co" items="${comment}">
						<tr class="table-light">
							<td colspan="4">
								${co.idx}.
								<c:set var="name" value="${fn:replace(co.name, '<', '&lt;')}"></c:set>
								<c:set var="name" value="${fn:replace(name, '>', '&gt;')}"></c:set>
								${name} 님이 
								<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>에 남긴글<br/>
								<c:set var="content" value="${fn:replace(co.content, '<', '&lt;')}"></c:set>
								<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"></c:set>
								<c:set var="content" value="${fn:replace(content, enter, '<br/>')}"></c:set>
								${content}<br/>
								<div align="right">
									<input class="btn btn-warning btn-sm" type="button" value="수정"
									style="font-size: 13px;" onclick="setting(${co.idx}, 2, '댓글수정', '${name}', '${content}')">
									<input class="btn btn-danger btn-sm" type="button" value="삭제"
									style="font-size: 13px;" onclick="setting(${co.idx}, 3, '댓글삭제', '${name}', '${content}')">
								</div>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				
		</table>
	</form>

</body>
</html>








































