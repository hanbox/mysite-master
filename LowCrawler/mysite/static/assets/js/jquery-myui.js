
$(function(){
    var defaults = {
        sidebar: {
            fixed: true,//fixed sidebar
            rememberToggle: true, //remember if sidebar is hided
            offCanvas: true //make sidebar offcanvas in tablet and small screens
        },
        sideNav : {
            hover: false, //shows subs on hover or click
            showNotificationNumbers: 'onhover',//show how many elements menu have with notifcation style values - always, onhover, never
            showArrows: true,//show arrow to indicate sub
            sideNavArrowIcon: 'en-arrow-down5', //arrow icon for navigation
            showIndicator: false,//show indicator when hover links
            notificationColor: 'red', //green, red
            subOpenSpeed: 300,//animation speed for open subs
            subCloseSpeed: 400,//animation speed for close subs
            animationEasing: 'linear',//animation easing
            absoluteUrl: false, //put true if use absolute path links. example http://www.host.com/dashboard instead of /dashboard
            subDir: '' //if you put template in sub dir you need to fill here. example '/html'
        }
    }

    this.cdTop = function(){
        // browser window scroll (in pixels) after which the "back to top" link is shown
        var offset = 300,
            //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
            offset_opacity = 1200,
            //duration of the top scrolling animation (in ms)
            scroll_top_duration = 700,
            //grab the "back to top" link
            $back_to_top = $('.cd-top');

        //hide or show the "back to top" link
        $(window).scroll(function(){
            ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
            if( $(this).scrollTop() > offset_opacity ) {
                $back_to_top.addClass('cd-fade-out');
            }});

        //smooth scroll to top
        $back_to_top.on('click', function(event){
            event.preventDefault();
            $('body,html').animate({
                scrollTop: 0 ,
                }, scroll_top_duration
            );
	});
    }

    //set current nav element
    this.setCurrentNav = function () {
        var domain = document.domain;
        var navig = $('#sideNav');
        var navLinks = navig.find('a');
        if(domain === '') {
        }
        else {
            var afterDomain = window.location.pathname.split( '/' );
             for(var i = 0 ;i < afterDomain.length;)
             {
                 if(afterDomain[i] == "" || typeof(afterDomain[i]) == "undefined")
                 {
                    afterDomain.splice(i,1);
                 }
                 else
                 {
                    i++;
                 }
             }
            var afterDomain = afterDomain.pop();
            this.setCurrentClass(navLinks, afterDomain);
        }
    }

    this.setCurrentClass = function (mainNavLinkAll, url) {
        mainNavLinkAll.each(function(index) {
            //convert href to array and get last element
            var href= $(this).attr('href');
            if(href.indexOf(url) > 0) {
                //set new current class
                $(this).addClass('active');

                ulElem = $(this).closest('ul');
            } else {
                if (url == '') {
                    url = 'index.html';
                }
                if (href === url) {
                    $(this).addClass('active');
                }
            }

        });
    }

    this.initscoll = function(){
        var sections = $('section')
            nav = $('nav[role="navigation"]');

        $(window).on('scroll', function () {
            var cur_pos = $(this).scrollTop();
            sections.each(function() {
                var top = $(this).offset().top - 76
                    bottom = top + $(this).outerHeight();
                if (cur_pos >= top && cur_pos <= bottom) {
                    nav.find('a').removeClass('active');
                    nav.find('a[href="#'+$(this).attr('id')+'"]').addClass('active');
                }
            });
        });
        nav.find('a').on('click', function () {
            var $el = $(this)
                id = $el.attr('href');
            $('html, body').animate({
                scrollTop: $(id).offset().top - 75
            }, 500);
          return false;
        });
    }

    this.init = function() {
        this.cdTop();

        this.setCurrentNav();

        this.initscoll();

        $(".work-box").fancybox();

        $('[data-spy="scroll"]').each(function () {
          var $spy = $(this).scrollspy('refresh')
        })

	var sections = $('section')
		nav = $('nav[role="navigation"]');

	$(window).on('scroll', function () {
	  	var cur_pos = $(this).scrollTop();
	  	sections.each(function() {
	    	var top = $(this).offset().top - 76
	        	bottom = top + $(this).outerHeight();
	    	if (cur_pos >= top && cur_pos <= bottom) {
	      		nav.find('a').removeClass('active');
	      		nav.find('a[href="#'+$(this).attr('id')+'"]').addClass('active');
	    	}
	  	});
	});
	nav.find('a').on('click', function () {
	  	var $el = $(this)
	    	id = $el.attr('href');
		$('html, body').animate({
			scrollTop: $(id).offset().top - 75
		}, 500);
	  return false;
	});

	// Mobile Navigation
	$('.nav-toggle').on('click', function() {
		$(this).toggleClass('close-nav');
		nav.toggleClass('open');
		return false;
	});
	nav.find('a').on('click', function() {
		$('.nav-toggle').toggleClass('close-nav');
		nav.toggleClass('open');
	});

	$('#code').qrcode({
    render: "table",
    width: 200,
    height:200,
    text: "www.forour.cc:8080/download/mysite.apk"
    });
    }

    this.init();
})


/*function clientSideInclude(id, url)
{
    var req = false;

    // Safari, Firefox, 及其他非微软浏览器
    if (window.XMLHttpRequest)
    {
        try
        {
            req = new XMLHttpRequest();
        }
        catch (e)
        {
            req = false;
        }
    }
    else if (window.ActiveXObject)
    {
        // For Internet Explorer on Windows
        try {
            req = new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e)
        {
            try
            {
                req = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e)
            {
            req = false;
            }
        }
    }

    var element = document.getElementById(id);
    if (!element)
    {
        alert("函数clientSideInclude无法找到id " + id + "。" + "你的网页中必须有一个含有这个id的div 或 span 标签。");
        return;
    }

    if (req)
    {
        // 同步请求，等待收到全部内容
        req.open('GET', url, false);
        req.send(null);
        element.innerHTML = req.responseText;
    }
    else
    {
        element.innerHTML = "对不起，你的浏览器不支持" + "XMLHTTPRequest 对象。这个网页的显示要求" + "Internet Explorer 5 以上版本, " + "或 Firefox 或 Safari 浏览器，也可能会有其他可兼容的浏览器存在。";
    }
}*/

function loadTranslate(index){
    var url = "";
    if( index === 0 )
    {
        url = "https://translate.google.cn";
    }
    else if (index === 1 )
    {
        url = "http://fanyi.baidu.com/?aldtype=16047#auto/zh";
    }
    else if (index === 2 )
    {
        url = "http://fanyi.youdao.com";
    }
    else if (index === 3 )
    {
        url = "http://www.bing.com/translator/";
    }

    $("#sceen").attr("src",url);
    $("#sceen-link").attr("href",url);
}

//进入全屏
function requestFullScreen() {
    var de = document.documentElement;
    if (de.requestFullscreen) {
        de.requestFullscreen();
    } else if (de.mozRequestFullScreen) {
        de.mozRequestFullScreen();
    } else if (de.webkitRequestFullScreen) {
        de.webkitRequestFullScreen();
    }
}
//退出全屏
function exitFullscreen() {
    var de = document;
    if (de.exitFullscreen) {
        de.exitFullscreen();
    } else if (de.mozCancelFullScreen) {
        de.mozCancelFullScreen();
    } else if (de.webkitCancelFullScreen) {
        de.webkitCancelFullScreen();
    }
}

function getCurSel(){
    var storage = window.localStorage;
    return storage.getItem("base_cur_select");
}

function setCurSel(index){
    var storage = window.localStorage;
    storage.setItem("base_cur_select", index);
}

function initCurSel(){
    setCurSel(0);
}