$(function(){
	
	// slide-down images on homepage
	$('#body_home #our_work li').hover(function(){
		$(this).find('img').animate({top:'139px'},{queue:false,duration:500});
	}, function(){
		$(this).find('img').animate({top:'0px'},{queue:false,duration:500});
	});

	$('#gallery').gallerify();
	
	// contact page
	$('#body_contact').rfpForm();
	
	// easter egg :)
	$('<div id="worm"></div>').appendTo('#footer_sleeve').toggle(
		function(){
			$(this).parents('#footer_sleeve').animate({height:'835px'},{queue:false,duration:2000});
			$('html,body').animate({scrollTop:$('#footer_sleeve').offset().top + 865},{queue:false,duration:2000});
		}, function(){
			$(this).parents('#footer_sleeve').animate({height:'70px'},{queue:false,duration:2000});
	});
	
	// cope with iphone layout
	if(navigator.platform == "iPhone") {
		
		setOrientation();
		addEventListener('orientationchange',setOrientation);
		
		function setOrientation() {
			window.orientation === 0 ? $('body').attr({orient: 'portrait'}) : $('body').attr({orient: 'landscape'});
		}
	}
});

jQuery.fn.gallerify = function() {
	return this.each(function(){
		var images = $('img.thumb',this);
		images.hide().css({opacity:0});
		$(images[0]).show().css({opacity:1});
		
		if (images.length > 1) {
			$(this).after('<ul id="gallery_changer"></ul>');
			var changer = $('+ul',this);
			images.each(function(){
				var numberLink = (images.index(this)+1).toString();
				if (numberLink.length == 1) numberLink = '0' + numberLink;
				$('<li><a href="#">'+numberLink+'</a></li>').click(showImage).appendTo(changer);
			});
			$('li:first',changer).addClass('first current');
		}

		function showImage() {
			$(this).addClass('current').siblings().removeClass('current');
			var clicked = this;
			images.each(function(){
				if ($(this).is(':visible')) {
					$(this).animate({opacity:0},200,function(){
						$(this).hide();
						$(images[$(clicked).parent().children('li').index(clicked)]).css({display:'block'}).animate({opacity:1},200);
					});
				}
			});
			return false;
		}
	});
}

jQuery.fn.rfpForm = function() {
	return this.each(function(){
		$('#rfp_form,#step_2,#step_3').hide();
		if($('#contact_flash').length<1){
			$('<div class="radios" id="nature"><p class="label">What is the nature of your enquiry?</p><label for="type_1"><input type="radio" class="radio" id="type_1" name="contact[form_type]" value="general" checked="checked" /> General enquiry</label><label for="type_2"><input type="radio" class="radio" id="type_2" name="contact[form_type]" value="proposal" /> Proposed project</label></div>').insertBefore('#message_form');
			$('#type_1').click(function(){
				$('#message_form').show();
				$('#rfp_form').hide();
			});
			$('#type_2').click(function(){
				$('#message_form').hide();
				$('#rfp_form').show();
			});
			$('<img class="submit back" src="/images/button_back.gif" alt="Back" />').click(function(){
				$(this).parents('.step').hide().prev().show();
				return false;
			}).appendTo('#step_2,#step_3');
			$('#step_3 input.submit').appendTo('#step_3');
			$('<img class="submit next" src="/images/button_next.gif" alt="Next" />').click(function(){
				$(this).parents('.step').hide().next().show();
			}).appendTo('#step_1,#step_2');
		}
	});
}