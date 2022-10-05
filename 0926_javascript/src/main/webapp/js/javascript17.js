function alertTest(){
	alert('Daner')
}

function confirmTest(){
//	confirm('메시지');
//	확인버튼을 클릭하면 true, 취소버튼을 클릭하면 false를 리턴한다.
//	console.log(confirm('배경색을 바꿀지 물어봄'))
	if (confirm('배경색을 바꿀지 물어봄')){
		document.body.style.backgroundColor = 'black';
		document.body.style.color = 'white';
	}
}

function promptTest(){
//	prompt('메시지')
//	prompt('메시지', '안내 메시지')
//	prompt() 함수는 데이터를 입력하고 확인 버튼을 클릭하면 입력한 데이터가 리턴되고 취소 버튼을 클릭하면 null이 리턴된다.
//	리턴되는 데이터의 타입은 무조건 string타입으로 리턴된다.
	let menu = prompt(' 메시지\n 테스트 메시지입니다.', '안내 메시지')
	console.log(menu);
	console.log(typeof menu);
	
	switch (menu){
		case '1':
			console.log('짜장면');
			break;
		case '2':
			console.log('짬뽕');
			break;
		case '3':
			console.log('탕수육');
			break;
	}
}















































