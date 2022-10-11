function a1(){
//	let span = document.getElementsByTagName('span');
//	console.log(span.length);
//	for (let i=0; i<span.length; i++){
//		span[i].style.color = 'blue';
//	}
	$('span').css('color', 'red');
}

function a2(){
	$('#t1').css('color', 'green');
}

function a3(){
	$('.t2').css('color', 'brown');
}

function a4(){
	$('li > span').css('color', 'hotpink')
}

function a5(){
	$('li span').css('color', 'yellow')
}

function a6(){
//	같은 부모 요소를 가지는 형제 요소 중에서 특정 순선에 있는 요소를 선택하는 선택자이다.
//	:nth-child()는 앞에서부터 세고 :nth-last-child()틑 뒤에서 부터 센다
//	인수로 숫자, 연산식(곱하기는 숫자가 앞에 와야하고 더하기 빼기는 숫자가 뒤에 와야한다.)
//	odd(홀수), even(짝수)도 사용할 수 있다.
//	$('li').eq(0).css('backgroundColor', 'skyblue')
//	$('li:eq(0)').css('backgroundColor', 'pink')
	
//	eq()는 index가 0부터 시작하고 nth-child는 index가 1부터 시작한다.
//	$('li:nth-child(1)').css('backgroundColor', 'pink')	
	
//	$('li:nth-child(odd)').css('backgroundColor', 'pink')	
//	$('li:nth-child(even)').css('backgroundColor', 'skyblue')	
	
//	n은 자동으로 0부터 1씩 증가하는 정수이고 '+', '-', '*' 연산을 사용할 수 있다.
//	$('li:nth-child(n)').css('backgroundColor', 'skyblue')	
//	$('li:nth-child(n+3)').css('backgroundColor', 'skyblue')
//	'*' 연산도 가능한데 '*' 연산자를 사용하면 안되고 숫자가 n앞에 나와야 한다.
	$('li:nth-child(2n)').css('backgroundColor', 'skyblue')
}
//	first-child: 같은 부모 요소를 가지는 형제 요소 중에서 첫번째 자식 요소만 선택한다.
//	last-child: 같은 부모 요소를 가지는 형제 요소 중에서 마지막 자식 요소만 선택한다.

function a7(){
	$('li:first-child').css('backgroundColor', 'red')
	
}

function a8(){
	$('li:last-child').css('backgroundColor', 'blue')
}










































