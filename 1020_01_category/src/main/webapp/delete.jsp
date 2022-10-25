<%@page import="com.tjoeun.vo.CategoryList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tjoeun.vo.CategoryVO"%>
<%@page import="com.tjoeun.service.CategoryService"%>
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
%>

	<jsp:useBean id="vo" class="com.tjoeun.vo.CategoryVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>
	
<%
//	삭제한 카테고리 이름을 삭제 완료 메시지에 표시하기 위해서 삭제하기 전에 삭제할 카테고리를 얻어온다.
	CategoryService service = CategoryService.getInstance();
	CategoryVO original = service.selectByIdx(vo.getIdx());
//	out.println(original);
	
//	1. 삭제 버튼이 클릭되면 해당 카테고리를 테이블에서 완전히 삭제한다.
//	service.delete(vo.getIdx());
	
//	2. 삭제 버튼이 클릭되면 해당 카테고리 자체를 "삭제된 카테고리 입니다."로 수정한다.
//	service.deleteUpdate(vo.getIdx());
	
//	3. 삭제 버튼이 클릭되면 deleteCheck 필드의 값을 "YES"로 수정한다.
//	service.deleteCheck(vo.getIdx());

//	4. 삭제 버튼이 클릭되면 삭제한 카테고리와 삭제한 카테고리의 모든 서브 카테고리도 삭제한다.
//	삭제할 카테고리와 삭제할 카테고리의 모든 서브 카테고리로 목록을 얻어와 ArratList에 저장한다.
	ArrayList<CategoryVO> deleteList = service.deleteList(vo);
	for(int i=0; i<deleteList.size(); i++){
//		out.println(deleteList.get(i) + "<br/>");
		service.delete(deleteList.get(i).getIdx());
		
		try{
			// 삭제한 카테고리의 seq에 1을 더한 값이 다음에 삭제하려는 카테고리의 seq와 같으면 다음에 
			// 삭제할 카테고리가 있다는 의미이므로 계속 반복해서 카테고리를 삭제하면 되지만 같지 않다면
			// 부모 카테고리가 변경되서 다음에 삭제할 카테고리가 없다는 의미이므로 더 이상 삭제하면 안되기
			// 때문에 반복을 탈출한다.
			if (deleteList.get(i).getSeq() + 1 != deleteList.get(i + 1).getSeq()){
				break;
			}
		} catch(IndexOutOfBoundsException e){
			
		}
	}
	
//	삭제 작업이 실행된 카테고리 그룹의 seq를 0부터 1씩 증가하게 다시 부여하는 메소드를 실행한다.
	service.reSeq(original.getGup());
	
//	삭제 메시지를 출력하고 카테고리 목록을 얻어오는 페이지(list.jsp)를 호출한다.
	out.println("<script>");
//	out.println("alert('" + original.getIdx() + "번 카테고리 삭제완료')");
	out.println("alert('" + original.getCategory() + "카테고리 삭제완료')");
	out.println("location.href='list.jsp'");
	out.println("</script>");
%>
</body>
</html>































