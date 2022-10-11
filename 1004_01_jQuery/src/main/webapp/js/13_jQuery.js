$(() => {
	$('.delete').click(function(){
//		$(this).parent().slideUp('slow');
		$(this).parent().slideUp('slow', 'easeInOutBounce');
	})
	
	$('#view').click(function(){
		$('.pane').slideDown(1000);
//		$('.pane').show(1000);
//		$('.pane').fadeIn(1000);
	})
})









































