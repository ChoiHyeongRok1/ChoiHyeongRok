$(() => {
	
//	$('p').eq(0).css('color', 'blue');
//	$('p:eq(0)').css('color', 'blue');
//	$('span').css('color', 'green');

//	0번째 <p>태그를 선택한 후 <span>태그를 선택한다.
//	$('p:eq(0)').add('span').css('color', 'hotpink')
	$('p').eq(0).add('span:eq(1)').add('p:eq(1)').css('color', 'red')
	
	$('div').children().css('color', 'purple')
	$('div').children().click(function(){
		if($(this).is('span')){
			$(this).css('color', 'green')
		}
		if($(this).is('b')){
			$(this).css('color', 'blue')
		}
		if($(this).is('p')){
			$(this).css('color', 'red')
		}
	})
})












































