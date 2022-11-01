function setting(idx, mode, title, name, content){
	let frm = document.commentForm; // contentView.jsp 의 댓들 폼을 얻어온다.
//	수정 또는 삭제할 댓글 번호를 넣어준다. 댓글 입력시는 0을 넣어준다.
	frm.idx.value = idx;
//	commentOK.jsp에서 사용할 댓글 작업 모드를 넣어준다. 1 => 저장, 2 => 수정, 3 => 삭제
	frm.mode.value = mode;
//	submit 버튼에 표시할 텍스트를 넣어준다.
	frm.commentBtn.value = title;
	
//	수정 또는 삭제할 댓글 작성자 이름을 댓글 폼의 name 속성이 name인 텍스트 상자에 넣어준다.
	frm.name.value = name;
	
//	frm.content.value = content;
//	enter키 처리 문제때문에 오류
	
//	vo.content를 넘겨받으면 자바스크립트는 이스케이프 시퀀스(\r\n)가 포함된 데이터를 인수로 받을 수
//	없기때문에 정상적으로 동작되지 않는다.
//	브라우저에 enter키가 입력된 곳을 줄을 바꿔서 출력하기 위해서 "\r\n"을 "<br/>"로 치환해서 넣어준
//	content를 인수로 넘겨야 하고 자바스크립트에서는 "<br/>"을 다시 "\r\n"로 치환해야 한다.
	
	while(content.indexOf('<br/>') != -1){		
		content = content.replace('<br/>', '\r\n');
	}
	frm.content.value = content;
}