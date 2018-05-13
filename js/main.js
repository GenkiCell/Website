$(document).ready(function() {
	$(window).scroll(function() {
		// Home - Reveal 'join' image
		var yFooter = $('footer').offset().top;
		var hWin = $(window).height();
		if ($(window).scrollTop() > yFooter - hWin - 50) {
			joinImageReveal();
		}
	});
	
	$('.textarea-check').on('keyup cut paste', function () {
		textareaCheck(this);
	}).keyup();

	$('.shift-on-hover').hover(
		function() {shift(this, 'in');},
		function() {shift(this, 'out');}
	);
});

function langSelectToggle(state) {
	if (state === undefined) {
		state = !$('.header-lang-select').is(':visible');
	}
	$('.header-lang-select').toggle(state);
}

function moreToggle(id, index, state) {
	// If 'index' is an object, use the index of the current slider item
	if (typeof index === 'object') {
		// Skip if 'more' div isn't visible
		if (!$('#'+id+' > div:visible').length) {
			return;
		}
		index = $(index).closest('.slider').find('.slider-item:visible').index();
		if (index === -1) {
			return;
		}
	}
	var container = $('#'+id);
	var item = $('#'+id+' > div').eq(index);
	if (state === undefined) {
		state = !$(item).is(':visible');
	}
	$(container).hide();
	$('#'+id+' > div').hide();
	if (state) {
		$(container).show();
		$('#'+id+' > div').eq(index).show();
	}

	switch (id) {
		case 'dapps-profiles-1':
		case 'dapps-profiles-2':
		case 'dapps-profiles-3':
			$('#'+id+'-icons .dapps-triangle').hide();
			if (state) {
				$('#'+id+'-icons .dapps-triangle').eq(index).show();
			}
			break;
			
		case 'team-profiles':
			$('.team-profiles-open').show();
			$('.team-profiles-close').hide();
			$('.team-profiles-open').eq(index).toggle(!state);
			$('.team-profiles-close').eq(index).toggle(state);
			break;
	}
}

function navToggle(state) {
	if (state === undefined) {
		state = !$('.header-nav').is(':visible');
	}
	//$('.header-nav').toggle(state); // prevents display when screen widened
	$('.header-nav').css('display', state ? 'block' : '');
	$('.header-lang-select').toggle(state);
}

function sliderItemSelect(obj, sel) {
	var slider = $(obj).closest('.slider');
	var nItems = $(slider).find('.slider-item').length;
	var iSel = $(slider).find('.slider-item-sel').index();
	var iSelNew;
	switch (sel) {
		case '+1':
			iSelNew = iSel < nItems - 1 ? iSel + 1 : 0;
			break;
			
		case '-1':
			iSelNew = iSel > 0 ? iSel - 1 : nItems - 1;
			break;
	}
	$(slider).find('.slider-item').removeClass('slider-item-sel');
	$(slider).find('.slider-item').eq(iSelNew).addClass('slider-item-sel');
}

function shift(hoverObj, dir) {
	if ($(window).width() < 725) {
		$(hoverObj).find('.shift').css('left', 0);
		return;
	}
	if (dir === 'in') {
		$(hoverObj).find('.shift').each(function() {
			var delay = $(this).data('delay');
			var shiftMult = $(this).hasClass('shift-left') ? -1 : 1;
			if (delay) {
				var obj = this;
				setTimeout(function() {
					$(obj).animate({left: 20 * shiftMult}, 500, 'easeOutCubic');
				}, delay);
			} else {
				$(this).animate({left: 20 * shiftMult}, 500, 'easeOutCubic');
			}
		});

	} else if (dir === 'out') {
		$(hoverObj).find('.shift-right').animate({left: 0}, 500);
		$(hoverObj).find('.shift-left').animate({left: 0}, 500);
	}
}

function textareaCheck(obj) {
    var id = $(obj).attr('id');
    var maxLen = $(obj).attr('maxlength');
    if (maxLen) {
        var len = $(obj).val().length;
        if (len > maxLen) {
            $(obj).val($(obj).val().substring(0, maxLen));
            len = maxLen;
        }
        var remain = maxLen - len;
        $('#' + id + '_chars').html(len);
        $('#' + id + '_remain').html((remain > 0 ? "" : '<span class="bold red">') + remain + (remain > 0 ? '' : '</span>')).parent().toggle(remain <= 100);
    }
    obj.rows = 1;
    while (obj.scrollHeight > obj.clientHeight) {
        obj.rows++;
    }
    obj.rows++;
}


// Page-specific

function moreArrowBounce() {
	$('.more-arrow').animate({
		top: 6
	},
	{
		duration: 200,
		easing: 'easeInCubic',
		complete: function() {
			$('.more-arrow').animate({
				top: 0
			},
			{
				duration: 400,
				easing: 'easeOutCubic',
				complete: function() {
					moreArrowBounce();
				}
			});
		}
	});
}

function moreArrowScroll() {
	var y = $('.header-wrapper').offset().top + $('.header-wrapper').outerHeight();
//	$(window).scrollTop(y);
	$('html, body').animate({scrollTop: y}, 200);
}

function homeBallBounce() {
	$('#home-ball').animate({
		bottom: 50
	},
	{
		duration: 500,
		easing: 'easeInCubic',
		complete: function() {
			$('#home-ball').animate({
				bottom: 70
			},
			{
				duration: 500,
				easing: 'easeOutCubic',
				complete: function() {
					homeBallBounce();
				}
			});
		}
	});
	$('#home-ball-shadow img').animate({
		width: '100%'
	},
	{
		duration: 500,
		easing: 'easeInCubic',
		complete: function() {
			$('#home-ball-shadow img').animate({
				width: '75%'
			},
			{
				duration: 500,
				easing: 'easeOutCubic'
			});
		}
	});
}

function joinImageReveal() {
	if ($('#home-join-image').is(':visible')) {
		return;
	}
	var y = $('#home-join-image').parent().outerHeight();
	var h = $('#home-join-image img').height();
	$('#home-join-image').css('bottom', -y).show();
	$('#home-join-image').animate({bottom: 0}, 1500, 'easeOutCubic');
}