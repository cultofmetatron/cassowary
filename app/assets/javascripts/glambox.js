//glambox, a custom jquery plugin

(function( $ ) {
  $.fn.glamBox = function() {
  
    // Do your awesome plugin stuff here
	var self = this;
	$('ul > li', self).delegate( 'a', "click",  function(event) {
			event.preventDefault();
			var img_path = $(this).data("fullsize");
			var full_path = '<img src="' + img_path + '">';
			$("div#photo_gallery_panel > div").css({
				"background-image":"url(" + img_path + ")",
			});
			$("div#photo_gallery_panel").fadeIn("slow");
	});
  };
})( jQuery );

$(document).ready(function() {
	$('div#photo_gallery').glamBox();
})