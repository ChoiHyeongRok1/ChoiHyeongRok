<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제할 글 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" integrity="sha384-xeJqLiuOvjUBq3iGOjvSQSIlwrpqjSHXpduPd6rQpuiM3f5/ijby8pCsnbu5S81n" crossorigin="anonymous">
</head>
<body>
	
	<form class="m-3" action="deleteOK.jsp" method="post">
		<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
			<tr class="table-danger">
				<th colspan="4" style="font-size: 30px; text-align: center;">삭제할 글 보기</th>
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
				<th>제목</th>
				<td colspan="3">
					<c:set var="subject" value="${fn:replace(vo.subject, '<', '&lt;')}"></c:set>
					<c:set var="subject" value="${fn:replace(vo.subject, '>', '&gt;')}"></c:set>
					${vo.subject}
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3">
					<c:set var="content" value="${fn:replace(vo.content, '<', '&lt;')}"></c:set>
					<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"></c:set>
					<c:set var="content" value="${fn:replace(content, enter, '<br/>')}"></c:set>
					${content}
				</td>
			</tr>
			<tr class="table-light">
				<td colspan="4" align="center">
					<div class="row g-3 align-items-center" style="width: 90%; margin-left: auto; margin-right: auto;">
						<div class="col-auto">
							<label for="password" class="col-form-label">비밀번호</label>
						</div>
						<div class="col-auto">
							 <input class="form-control form-control-sm" type="password" name="password">
						</div>
						<div class="col-auto">
							<input class="btn btn-danger btn-sm" type="submit" value="삭제하기">
							<input class="btn btn-primary btn-sm" type="reset" value="다시쓰기">
							<input class="btn btn-warning btn-sm" type="button" value="돌아가기" onclick="history.back()">
							<input class="btn btn-success btn-sm" type="button" value="목록보기" 
								onclick="location.href='list.jsp?currentPage=${currentPage}'">
						</div>
					</div>
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="idx" value="${vo.idx}">
		<input type="hidden" name="currentPage" value="${currentPage}">
	</form>

</body>
</html>








































