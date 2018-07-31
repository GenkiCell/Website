$(function() {
    window.onload = function(){
     $(".nav .logo img").css('margin-top', -$(".nav .logo img").height()/2); //手机端导航 margin-top
     $(".header .logo img").css('margin-top', -$(".header .logo img").height()/2); //pc端导航  margin-top
      $('.qanul').css('width',$(window).width() * 120 / 2000)
            $('.qanul').css('height',$(window).width() * 120 / 2000)
            $('.qanul .gou').css('width',$(window).width() * 120 / 2000)
            $('.qanul .gou').css('height',$(window).width() * 120 / 2000)
           
       $(".ceng_box").height($(window).height()*0.8)
        
        $(".time").each(function(index, el) {
            $(this).height($(this).parents('li').find("p").height())
        });


        $(".page1").height($(window).height());
    }

  window.onresize=function(){
    $(".nav .logo img").css('margin-top', -$(".nav .logo img").height()/2); //手机端导航 margin-top
     $(".header .logo img").css('margin-top', -$(".header .logo img").height()/2); //pc端导航  margin-top
    
        
    }
    $(window).resize(function(){
            $('.qanul').css('width',$(window).width() * 120 / 2000)
            $('.qanul').css('height',$(window).width() * 120 / 2000)
            $('.qanul .gou').css('width',$(window).width() * 120 / 2000)
            $('.qanul .gou').css('height',$(window).width() * 120 / 2000)
});

   

    $(".selects").click(function(event) {
        $(".m_nav").hide();
        if($(".langluge,.m_langluge").css("display") == "block"){
            $(".langluge,.m_langluge").fadeOut();
        }else{
            $(".langluge,.m_langluge").fadeIn();
            $(".dl").hide();
        }
    });
     $(".setting , .settingpic").click(function(event) {
        $(".m_nav").hide();
         $(".dl").hide();
         $('.m_menu').hide();
        if($(".newpwd").css("display") == "block"){
            $(".newpwd").fadeOut();
        }else{
            $(".newpwd").fadeIn();
        }
    });
     $(".menu").click(function(event) {
        $(".m_nav").hide();
        if($(".m_menu").css("display") == "block"){
            $(".m_menu").fadeOut();
        }else{
            $(".m_menu").fadeIn();
            $(".dl").hide();
        }
    });

    $(".m_langluge").click(function(event) {
        $(".m_langluge").fadeOut();
    });


    $(".langluge li").click(function(event) {
        $(".langluge").fadeOut();
    });

    $(".header ul.L li,.m_nav li").click(function(event) {
        $(this).addClass('cur').siblings().removeClass('cur');
        var href = $(this).find("a").attr("data-href")
        $("body,html").animate({
            scrollTop: $("#"+href+"").offset().top - 35
        }, 1000);
    });





 $(".meau").click(function(event) {
        if($(".m_nav").css('display') =='none'){
            $(".m_nav").fadeIn();
            $(".dl").hide();
        }else{
             $(".m_nav").fadeOut();
        }
    });


    $(".m_nav li").click(function(event) {
        $(".m_nav").fadeOut();
    });




    $(".sign").click(function(event) {
        $(".login").show();
        $(".m_nav").fadeOut();
    });

  
   

    $(".dl_li").click(function(event) {
        $(".dl").hide();
        $(".login").show();
    });

  
    $(".zc").click(function(event) {
        $(".dl").hide();
        $(".zhuce").show();
    });

    $(".close").click(function(event) {
        $(".dl").hide();
    });

    
    $(".ceng").height($(document).height());

  
    $(".close_video").click(function(event) {
        $(".video1").hide();
		$('video').trigger('pause');
    });

  
    $(window).scroll(function() {
    	
        var sc = $(window).scrollTop();
        if (sc > 0) {
            $(".top").css("display", "block");
        } else {
            $(".top").css("display", "none");
        }
        

      
    })


   
    $(".top").click(function() {
        var sc = $(window).scrollTop();
        $('body,html').stop().animate({
            scrollTop: 0
        }, 500);
    });
     $(".down").click(function() {
       $("html, body").animate({ 
       	scrollTop: $(document).height() 
       }, 500);
    });


    
    $(".viseo_btns").click(function(event) {
        $(".video1").show();
    });

    $(".page1,.sign,.header ul.L,.sample,.ceng,.meau").click(function(event) {
        $(".langluge,.m_langluge").fadeOut();
    });

    $(".ceng").click(function(event) {
        $(".dl").hide();
        $(".new_ceng").hide();
    });

    $(".m_nav").click(function(){
        $(this).fadeOut();
        return false;
    })
    $('.linka').click(function(){
        $('.clearfixHalf').hide();
        $('.clearfixScreen').show();
    })
    $('.narrow').click(function(){
        $('.clearfixHalf').show();
        $('.clearfixScreen').hide();
    })

    $(".news_xw").click(function(event) {
        $(".news").fadeToggle();
        $('.news').css('height',$(window).height());
        $('.news').css('overflow',' auto');
    });


    $(".nav").click(function(event) {
        $('.news').hide();
      
    });


   
    $(".Team .more").click(function(event) {
		
        var index = $(this).parent().index();
		
        $('.Team_A').find('.Team_C').hide();
		
        $('.Team_A').find('.Team_C').eq(index).show();
		
    });

  
    $(".guanbi").click(function(event) {
        $(".Team_C,.Partners_C,.login_condition,.term_agreemet").hide();
    });

    $(".Partners ul li a").click(function(event) {
        $(".Partners_C").show();
    });
    $('.login_condition_a').click(function(){
        $('.login_condition').show();
    })
    $(document).keyup(function(event){
      if(event.keyCode ==13){
            if($('.login').css('display') =='block'){
                alert();
            }
      }
    });

    if($(window).width() < 1650){
        $('.Rup1').after($('.Ldown1'))
		$('.Rup2').after($('.Ldown2'))
		$('.Rup3').after($('.Ldown3'))
    }

	$('body').click(function(e) {
		var target = $(e.target);
		if(!target.is('#newsol *') && !target.is('.news_xw') && !target.is('.zhuce')) {
		   if ( $('#newsol').is(':visible') ) {  
				$('.news').hide();                                                    
		   }
		}
	})

    $('.select').click(function(){
        if($(this).find('ol').is(':visible')){
            $(this).find('ol').hide();
        }else{

        $('.select').find('ol').hide();
            $(this).find('ol').show();
        }
    })
    $('.select ol li').click(function(){
        var selectText = $(this).text();
        $(this).parent().parent().find('span:first').text(selectText);
    })
});

function preview(file){
   var obj = $(file);
    if (file.files && file.files[0]){ 
        obj.parent().parent().find('img').remove()
        var reader = new FileReader(); 
        reader.onload = function(evt){ 

            obj.parent().parent().prepend('<img src="' + evt.target.result + '" width="95px" height="50px" />');
        } 
        reader.readAsDataURL(file.files[0]); 
        obj.parent().parent().find('img').remove()
    }else{
        obj.parent().parent().find('img').remove()
        obj.parent().parent().prepend('<p style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></p>');
    } 

}