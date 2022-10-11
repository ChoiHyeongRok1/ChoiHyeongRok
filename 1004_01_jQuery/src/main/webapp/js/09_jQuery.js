$(() => {
	
//	$('div b').css({'fontSize': '30px', 'color': 'blue'});
	$('div').find('b').css({'fontSize': '30px', 'color': 'purple'});
	
//	$('#chd').text('손오공');
	$('div').children('#chd').html('<i>도라에몽</i>')
	
	$('span').css('fontSize', '20px');
	
	$('span').parent().css('backgroundColor', 'skyblue');
	
	$('span').parents('div').css('backgroundColor', 'yellowgreen');
	
	$('p').eq(2).next().css('backgroundColor', 'pink');
	$('p').eq(2).prev().css('backgroundColor', 'ivory');
})













































