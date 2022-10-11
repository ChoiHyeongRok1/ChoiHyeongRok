$(() => {
	$('#shuffle').cycle({ 
	    fx:     'shuffle', 
	    easing: 'easeOutBack', 
	    delay:  -4000 
	});
	
	$('#zoom').cycle({ 
	    fx:    'zoom', 
	    sync:  false, 
	    delay: -2000 
	});
	
	$('#fade').cycle();
	
	$('#slide').cycle({ 
	    fx:      'turnDown', 
	    delay:   -4000 
	});
	
	$('#up').cycle({ 
	    fx:    'curtainX', 
	    sync:  false, 
	    delay: -2000 
	 });
	 
	 $('#right').cycle({ 
	    fx:      'scrollRight', 
	    next:   '#right', 
	    timeout:  0, 
	    easing:  'easeInOutBack' 
	});
})








































