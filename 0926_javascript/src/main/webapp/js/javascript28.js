function randomNumber(number){
//	random(): 0 이상이고 1미만인 무작위 수를 발생시킨다.
	for(let i=0; i<6; i++){
		console.log(parseInt(Math.random() * number));
	}
	
//	ceil(): 올림, floor(): 내림, round(): 반올림
	console.log('올림' + Math.ceil(3.14));
	console.log('내림' + Math.floor(3.94));
	console.log('반올림' + Math.round(3.44));
	console.log('반올림' + Math.round(3.54));
	
}

function randomBgColor(){
	let r = Math.floor(Math.random() * 256);
	let g = Math.floor(Math.random() * 256);
	let b = Math.floor(Math.random() * 256);
	console.log('r: ' + r + ', g: ' + g + ', b: ' + b);
//	document.body.style.backgroundColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
	document.body.style.backgroundColor = `rgb(${r}, ${g}, ${b})`;
}

function randomCircle(){
	let radius = Math.floor(Math.random() * 100) + 1;
	let r = Math.floor(Math.random() * 256);
	let g = Math.floor(Math.random() * 256);
	let b = Math.floor(Math.random() * 256);
	console.log('원의 반지름: ' + radius);
	
	let circle = document.getElementById('circle');
	circle.style.width = radius * 2 + 'px';	// div태그의 폭
	circle.style.height = radius * 2 + 'px';	// div 태그의 너비
	
	circle.style.border = '4px solid ' + `rgb(${r}, ${g}, ${b})`; 
	circle.style.borderRadius = '50%';
	circle.style.backgroundColor = `rgb(${r}, ${g}, ${b})`;
}

function randomCircleArea(){
	let circleWidth = document.getElementById('circle').style.width; // width 속성값을 얻어온다.
	console.log('원의 지름: ' + circleWidth);
	console.log(typeof circleWidth);
	
	let width = circleWidth.substring(0, circleWidth.length - 2);
	console.log('원의 지름: ' + width);
	
	width = parseInt(circleWidth);
	console.log('원의 지름: ' + width);
	
	let radius = width / 2;
	console.log('원의 반지름: ' + radius);
	
	let area = Math.PI * Math.pow(radius, 2); // 원의 너비
	let len = 2 * Math.PI * radius; // 원의 둘레
	
	document.getElementById('area').innerHTML = Math.round(area);
	document.getElementById('len').innerHTML = Math.round(len);
}










































