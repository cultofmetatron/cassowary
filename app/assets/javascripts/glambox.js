//glambox, a custom jquery plugin

(function( $ ) {
  $.fn.glamBox = function() {
  
    // Do your awesome plugin stuff here
	var self = this;
	var lightboxIn  = function(event) {
			event.preventDefault();
			
			var img_path = $(this).data("fullsize");
			var winheight = $(window).height();
			var winwidth = $(window).width();
			var picheight = winheight*.7;
			var picwidth = winwidth*.7
			
			//calculate offsetts
			var offset_vertical = (winheight - picheight) / 2 - 40 ;
			//alert(offset_vertical);
			
			var img_html;
			img_html = '<img src="' + img_path + '" ' ;
			img_html = img_html + 'width=' + picwidth + ' height="' + picheight + '" ';
			img_html = img_html + '>';
			
			$("div#photo_gallery_panel > div").html(img_html);
			$("div#photo_gallery_panel > div > img").css("margin-top", offset_vertical )
			
			
			$("div#photo_gallery_panel").fadeIn("slow");
	}
	$('ul > li', self).delegate( 'a', "click", lightboxIn);
	
	$("div#photo_gallery_panel").bind({
		"click": function(event) {
			$(this).fadeOut();
		},
	})
	
  };
})( jQuery );

$(document).ready(function() {
	
	$('div#photo_gallery').glamBox();
})