// JavaScript Document
  $('#slideshow').toggleClass('hideDiv'); 
  $(document).ready(function() {
	$('#slideshow').toggleClass('hideDiv'); 
    $('#slideshow').cycle({
		fx: 'fade',
		random:  1,
		pause: 1,
		speed:    5000, 
    	timeout:  2000,
		height:'auto',
		 after:     function() {
            $('#caption').html(this.alt);
        }
	});
});