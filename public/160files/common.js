var _default_img_path_ = '/static/v2/style';
var VERSION = 2014092388;
function search() {
	var search_key = $('#search_key').val();
	if(search_key=='' || search_key=='输入医院名称/医生姓名/科室名称') {
		return false;
	}
	var serch_type = $('#serch_type').val();
        var noCity = $('#no_city').val();
	location.href = JYUrl('main','search',{search_key:search_key,serch_type:serch_type, no_city:noCity});	
	return false;
}
function search_1() {
        var hostName = location.hostname;
        var sUrl = "http://"+hostName+":"+location.port+"/search/doctor";
	location.href = sUrl;	
	return false;
}

$('#ec_cs_pannel').hide();
//setLogin('_status_login_div','_status_logout_div');
$(function(){


var userInfo =null;
//浮动窗
$(".Kefu-fiexd li").hover(function(){
		$(this).addClass("cur");}
		,function(){
		$(this).removeClass("cur");
		
	});
//客服是否上班
var kfDate = new Date();
var kfhour = kfDate.getHours();
if(kfhour < 9 || kfhour >=21){
	if($('#ec_cs_pannel').css('display') == 'block'){
		$('#ec_cs_pannel').hide();
	}
	//$('#kfonline').html("<img style='margin-top:-60px;margin-left:-20px;' src='"+_default_v4_path_+"/style/global/kfoffline.jpg'>");
}
else{
	if(null){
		if($('#ec_cs_pannel').css('display') == 'none'){
			$('#ec_cs_pannel').show();
		}else{
			$('body').append('<script type="text/javascript" id="kfonlinejs" src="http://cs.ecqun.com/?id=662150"></script>');
		}
	}else{
		//$('#kfonline').html("<a style='background:none;border:0px;' class='_login_tips_' href='' ><img style='margin-top:-60px;margin-left:-20px;'  src='"+_default_v4_path_+"/style/global/kfonline.png'></a>");
	}
}
$('#ec_cs_pannel').hide();
/*$.ajax({
	url : JYUrl('main', 'kfonline'),
	type:'post',
	dataType : 'json',
	success : function(json){
		if(json.code == -1){
			if($('#ec_cs_pannel').css('display') == 'block'){
				$('#ec_cs_pannel').hide();
			}
			$('#kfonline').html(json.info);
			}
		else if(json.code == 1){
			if($('#ec_cs_pannel').css('display') == 'none'){
				$('#ec_cs_pannel').show();
			}else{
				$('body').append(json.info);
			}
			$('#kfonline').html();
			}else if (json.code == 2){
				$('#kfonline').html(json.info);
			}
		}
	});*/
	$(window).on("scroll",
		function() {
   		 	$(this).scrollTop() >= 500 && $("#gotop").fadeIn(600),
    		$(this).scrollTop() < 490 && $("#gotop").fadeOut(1000)
		});

	$(window).on("scroll",
		function() {
   		 	$(this).scrollTop() >= 66 && $(".hd_nav").addClass('hd_nav_fix'),
    		$(this).scrollTop() < 60 && $(".hd_nav").removeClass('hd_nav_fix')
		});

  		$("#gotop").click(function() {
            $("html,body").animate({
                scrollTop: 0
            },500)
       	 })
//选城市

		$(".change_city").click(function() {
		 		$(this).find('.city_list_top').show();
				$(this).addClass('dowm_car');
		 	});	
		$(".city_list_top").hover(function() {
			$(this).show();
			//$(".change_city").removeClass('dowm_car');
			},function(){
			$(this).hide();
			$(".change_city").removeClass('dowm_car');
		});

		$(".con_dl dd a").click(function(){
			$(".city_list_top").hide();
			$(".change_city").removeClass('dowm_car');
		});


//
	$('input[placeholder], textarea[placeholder]').on('focus',function(){
		$(this).attr('placeholders',$(this).attr('placeholder'));$(this).attr('placeholder','');
	}).on('blur',function(){
		if($(this).attr('placeholders').length){
			$(this).attr('placeholder',$(this).attr('placeholders'));
		}
	});
    
   
	text_tips('search_key','输入医院名称/医生姓名/科室名称');
	
	$('._login_div_tips_').on('click', '._login_tips_', function(e) {
		var _login_call_href = $(this).hasClass('_nolink_')?'':$(this).attr('href');
		userLoginBox(function(){
									if(_login_call_href){
										location.href = _login_call_href;
									}
						});
					return false;
				});
	var _sub_nlogin  = $('#_ny_newlogins');
	var _nynewusername = $('#_nynewusername');
	var _nynewpassword = $('#_nynewpassword');
	var _c_nyname = null;

	if(_c_nyname!=null)_nynewusername.val(_c_nyname);

	_nynewusername.on('click',function(){
		$(this).select();
	});

//	_nynewusername.on('blur', function(){
//		_validate(_nynewusername);
//	});
//
//	_nynewpassword.on('blur', function(){
//		_validate(_nynewpassword);
//	});
		_sub_nlogin.on('click',function(){
			var _ny_login_states = 1;
			if(_validate(_nynewusername)
			&& _ny_login_states
			&& _validate(_nynewpassword)){
//			&& _validate(_nycheckcode)){
				var realLength = 0, str = _nynewpassword.val(), len = str.length, charCode = -1;
			    for (var i = 0; i < len; i++) {
			        charCode = str.charCodeAt(i);
			        if (charCode >= 0 && charCode <= 128) realLength += 1;
			        else realLength += 2;
			    }
			    
			    if(realLength < 32){
			    	var mw = encMe('JY91160',_nynewpassword.val());
			    	_nynewpassword.val(mw);
			    }
				if($('#lo_nexr').attr('checked')){
					$.cookieHelper('auto_password', _nynewpassword.val(), {expires: 3600*24*7,path: '/', domain: $_ny_domain_});
					$.cookieHelper('auto_load', 1, {expires: 3600*24*7,path: '/', domain: $_ny_domain_});
				}
				$.ajax({
					url : 'http://user.91160.com/login.html',
					type:'post',
					dataType : 'json',
					data: {
						username:_nynewusername.val(),
						password:_nynewpassword.val()
					},
					success : function(json){
						if(json.code == 1){
								setLogin('_status_login_div','_status_logout_div',json.data);
								$('._change_code').click();
						}else{
							location.href=JYUrl('user','login',{msgtips:"a"+json.code});
						}
					}
				});
			}
			return false;
		});
	
	$('._logout_call_').on('click',function(){
		var _t_log_out = $(this);
		if(_t_log_out.css('cursor')== 'wait'){
			return false;
		}else{
			_t_log_out.css('cursor','wait');
		}
		$.ajax({
			url:JYUrl('user', 'logout'),
			type:'get',
			dataType:'json',
			success:(function(re){
				setLoginOut('_status_login_div','_status_logout_div');
				_t_log_out.css('cursor','pointer');
				timeIDsa = setInterval('chlink(timeIDsa)', 5000); //注意:执行的函数需要加引号,否则会报错的 
			})
		});
		return false;
	});

        var noCity = $('#no_city').val();
        if(!noCity){
            noCity = 0;
        }
	
	$("#search_key").on('focus blur', function() {
        $(this).closest('.s_search').toggleClass('s_search_on');
    });
    
	$("#btn_search").on('click', function() {
		search();
	});
	$("#btn_search_1").on('click', function() {
		search_1();
	});

	//微信 二维码
	$('._weixin_dlg').on('click',function(){
        $('#open-dlg-weixin img[ori_src]').each(function() {
            if ($(this).attr('ori_src')) {
                $(this).attr('src', $(this).attr('ori_src'));
                $(this).removeAttr('ori_src')
            }
        })
		_alert($('#open-dlg-weixin').html(),{time:777,title:'关注“就医160”微信，享受预约挂号、咨询、导医就诊服务。'});
	});
	
	$.fn.thksTP = function(options) {
		
		var defaults = {
			value: " /差/一般/好/很好/非常好",
			img: $(this).attr('id')=='thks_overall_star'? _default_img_path_ + "/entity/tp_no_20.gif" :_default_img_path_ + "/entity/tp_no.gif",
			imgHover: $(this).attr('id')=='thks_overall_star'? _default_img_path_ + "/entity/tp_yes_20.gif" : _default_img_path_ + "/entity/tp_yes.gif"
		};
		
		var text = '';
		var options = $.extend(defaults, options);
		this.each(function() {
			sAttay = options.value.split("/");
			img = "<img src=" + options.img + " style=\"vertical-align: -1px;\"/>";
			text = "&nbsp;<span style='color:#f60;'>" + sAttay[0] + "</span>";
			for (i = 0; i < sAttay.length - 1; i++) {
				$(this).append(img);
			}

			var n = 5;$(this).append(text);
			$(this).children("img").bind('mouseover',
			function() {
				g = $(this).parent().children("img").index($(this)) + 1;
				$(this).parent().children("img").attr('src', options.img);
				$(this).parent().children("img").slice(0, g).attr('src', options.imgHover);
				$(this).parent().children("span").html(options.value.split("/")[g]);
			});

			$(this).children("img").bind('mouseout',
			function() {
				t=$(this).parent().next('input[type="hidden"]').val();
				g = (t=='')? 0 : 5-t;
				$(this).parent().children("img").attr('src', options.img);
				$(this).parent().children("img").slice(0, g).attr('src', options.imgHover);
				$(this).parent().children("span").html(options.value.split("/")[g]);
			});

			$(this).children("img").bind('click',
			function() {
				var g = $(this).parent().children("img").index($(this)) + 1;
				n = g;
				$(this).parent().next('input[type="hidden"]').val(5-n);
				$(this).parent().children("img").attr('src', options.img);
				$(this).parent().children("img").slice(0, g).attr('src', options.imgHover);
				$(this).parent().children("span").html(options.value.split("/")[g]);
			});
		});
	};
    
    //分享交互效果js
    $('#shareBox').click(function(){
          $(this).children('.share_fix').show();
      }).hover(function(){
          return;
      },function(){
          $(this).children('.share_fix').hide();
      });
    //新版头部js
    $("#city_now").click(function(){
		$(this).parent().addClass("city_choose_on");
	});

	$("#closeCity").click(function(){
		$("#city_choose").removeClass("city_choose_on");
	});
	$("#city_choose").mouseleave(function(){
		$("#city_choose").removeClass("city_choose_on");
	});
    $("#userTop").hover(function(){
		var w=$(this).width();
		$(this).addClass("user_div_on");
		//$(this).width(w);
	},function(){
		$(this).removeClass("user_div_on");
	});

	$("#close_n").click(function(){
		$("#headerWrap").css("margin-top","38px");
		$("#headerWrap").addClass("header_no");
		$("#notice").hide();
		$("#notice").remove();
	});
	/*我要纠错 begin*/
	$('#show_jiucuo').click(function(){
		_alert($('#jiucuo_content').html(),{title:'',time:1800,jiucuo:true,id:'show_jiucuo_html'},function(){
			$(".GE23 .vw_text textarea").each(function(){
			    $(this).click(function(){
			      $(this).parents(".vw_text").removeClass("no_text");
			      $(this).parents(".vw_text").addClass("focus");
			    });
			    $(this).blur(function(){
			        $(this).parents(".vw_text").removeClass("focus");
			      if($(this).val()==""){
			        $(this).parents(".vw_text").addClass("no_text");

			       }
			    });
			  })

			  $(".GE23 .vw_input .own_input").each(function(){
			    $(this).click(function(){
			      $(this).parents(".vw_input").removeClass("no_text");
			      $(this).parents(".vw_input").addClass("focus");
			    });
			    $(this).blur(function(){
			        $(this).parents(".vw_input").removeClass("focus");
			      if($(this).val()==""){
			        $(this).parents(".vw_input").addClass("no_text");

			       }
			    });
			  });
			$('#jiucuo_close').click(function(){
				art.dialog({id:'show_jiucuo_html'}).close();
			});
			$('#jiucuo_sub_btn').click(function(){
				var errtype=$('#er_type').val();
				var ercontent = $('#er_content').val();
				var eremail = $('#er_email').val();
				var emailreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9_]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
				if(ercontent.trim() == ''){
					   _alert("纠错内容不能为空为空!",{title:'提示'});return false;
					}
				if(eremail.trim() == ''){
					   _alert("邮箱不能为空为空!",{title:'提示'});return false;
				}
				if(!emailreg.test(eremail)){
					   _alert("邮箱格式不正确!",{title:'提示'});return false;
				}
				$.ajax({
					url:JYUrl("help","saveinfo"),
					type:'post',
					data:{eremail:eremail.trim() , errtype:errtype,ercontent:ercontent.trim()},
					dataType:'json',
					success:(function(o){
						if(o.code == 1){
							art.dialog({id:'show_jiucuo_html'}).close();
							_alert(o.msg,{title:'提示'});
						}else{
							_alert(o.msg,{title:'提示'});
						}
					})
				});
			});
		});
	});
	/*end*/
});
//@jyurl
function JYUrl(cName,aName,args, domain){
    var hostName = domain || location.hostname;
    var sUrl = "http://"+hostName+":"+location.port+"/"+cName+"/"+aName;
    if(args!=undefined){
            for(k in args){
                    sUrl += "/"+k+"-"+args[k];
            }
    }	
    return (sUrl+".html").toLowerCase();
}

//@jyurl
function JYUserUrl(cName,aName,args, domain){	
	var sUrl = "http://"+( (domain && domain != undefined ) ? domain : location.hostname)+"/"+cName;
	if(aName!=undefined && aName){
		sUrl = sUrl + '/' + aName;
	}	
	sUrl =  sUrl + '.html';
	if(args!=undefined && args){
		sUrl = sUrl + '?';
		for(k in args){
			sUrl += k+"="+args[k] + "&";
		}
	}	
	return sUrl;
}

//@setLogin
function setLogin(loginid,logoutid,data){
	var data = data || '';
	var _valCallTime = callTime();
	var _unlogin_length = $('#_status_loading').length;
	$.getJSON(JYUrl("User","check"), function(json){
			if(!json.fid){
				if(_unlogin_length){
					$('#_status_loading').hide();
					$('#_status_login').show();
				}
				$('.errnum').val(json.error_num);
				$("#"+loginid).show();
				$("#"+logoutid).hide();
			}else{
				if(_unlogin_length){
					$('#_status_loading').hide();
					$('#_status_center').show();
				}
				$("#_jy_show_usrname_").text(json.name);
				$("#"+loginid).hide();
				$("#"+logoutid).show();
				//手动改变
				$('#_status_login_').hide();
				$('#_status_logout_').show();
				$("#_ny_new_loginname").text(_valCallTime+'，'+json.name);
				var avastar=json.avatar || '/static/v2/style/global/u_'+json.sex+'.jpg';
				$(".selfavatar").attr('src',avastar);
			}
	});

	//异步加载客服
	//$.getScript("http://cs.ecqun.com/?id=662150");
	if($('#ec_cs_pannel').css('display') == 'none'){
		$('#ec_cs_pannel').show();
	}else{
		//$('body').append($("<script>").attr({
		//	id:'kfonlinejs',
		//	type:"text/javascript",
		//	src:"http://cs.ecqun.com/?id=662150"
		//}));
	}
	$('#kfonline').hide();
}
//@setLoginOut
function setLoginOut(loginid,logoutid){
	var _unlogin_length = $('#_status_loading').length;
	
	$("#"+logoutid).hide();
	$("#_jy_show_usrname_").text('');
	$("#"+loginid).show();
	//手动改变
	$('#_status_login_').show();
	$('#_status_logout_').hide();
	$("#_ny_new_loginname").text('');
	$(".selfavatar").attr('src','');
	if(_unlogin_length){
		$('#_status_center').hide();
		$('#_status_login').show();
	}
	//未登录客服
	$('#kfonlinejs').remove();
	$('#ec_cs_pannel').hide();
	$('#kfonline').show();
}
//@loadding
function _loadding(content){
	content = content || '正在加载中，请稍后...';
	_alert('<i class="icon-loading_small"></i>' +content, {id:'777',time:777});
}
//@dlg_msg
function dlg_msg(o, $dmsg){
	var $_dom = o.closest('tr');
	var $_hidden = $_dom.next('tr').hasClass('is-hidden');
	var $_visible = $_dom.next('tr').hasClass('is-visible');

	if($dmsg){
		if($_dom.next('tr').hasClass('dlg_class_'+o.attr('id'))){
			$_dom.next('tr').find('.form-validation').html($dmsg);
			if($_dom.next('tr').css('display')=='none')$_dom.next('tr').show();
			if($_visible || $_hidden)$_dom.next('tr').removeClass('is-hidden').addClass('is-visible');
		}else{
$dmsg = '\
<tr class="dlg_class_'+o.attr('id')+'">\
	<td></td>\
	<td><div class="form-validation">'+$dmsg+'</div></td>\
</tr>';

			$_item_msg = $($dmsg).hide();
			$_dom.after($_item_msg);
			$_item_msg.fadeIn();
		}
	}else{
		if($_visible || $_hidden){
			$_dom.next('tr').find('.form-validation').html('');
			$_dom.next('tr').addClass('is-hidden').removeClass('is-visible');
		}else{
			if($_dom.next('tr').hasClass('dlg_class_'+o.attr('id')))$_dom.next('tr').hide('fast');
		}
	}
};
//@alert
function _alert(content, o, fun){
	var o = o || {};
	var type = typeof(fun)=='function'?true:'';
	var content = content || '<i class="icon-loading_small"></i>';

	if(type){
		o.time  = 777;
		o.title = o.title?o.title:'提示';
		content+= '<p class="mt16 tc">';
		if(o.verify)
			content+= '<a class="btn btn_large btn_primary _tips_btn_green">'+(isNaN(o.verify)?o.verify:'确  定')+'</a> ';

		if(o.cancel)
			content+= '<a class="_tips_btn_cancel" href="javascript:void(0);">'+(isNaN(o.cancel)?o.cancel:'取消')+'</a>';
		content+= '</p>';
	}
	if(o.jiucuo){
		o.title = '';
	}
	var loadding_html = '<div id="open-dlg-tip" class="'+(o.css?o.css:'tip')+'">' +content+ '</div>';
	art.dialog({
		title:(o.title || ''),
		time:(o.time || 3),
		width:(o.width || 400),
		content:loadding_html,
		lock:true,
		drag:false,
		id:(o.id || '_tips_id_v2_'),
		opacity:0.4,
		padding:(o.padding || '0 30px 30px'),
		init: function(){
			if(art.dialog({id: '777'}))art.dialog({id: '777'}).close();
		 	if(!o.title)$('.aui_titleBar').find('a.aui_close').hide();

			if(type){
				if(o.verify){
					$('._tips_btn_green').on('click',function(){
						if($(this).css('cursor') == 'wait'){
							return false;
						}else{
							$(this).css('cursor','wait');
						}
						fun();
					});
				}else{
					fun();
				}
				
				o.cancel && $('._tips_btn_cancel').on('click',function(){
					art.dialog({id: (o.id || '_tips_id_v2_')}).close();
				});
			}
		}
	});
}
//@add_default_text
function text_tips(id,str){
	var obj=$("#"+id);
	obj.blur(function(){
		var objVal=$.trim(obj.val());
		if(objVal==""){
			obj.val(str);obj.css('color','#999999');
		}
	});	
		
	obj.focus(function(){
		var objVal=$.trim(obj.val());
		if(objVal==str) obj.val("");
	});	
}
//@callTime
function callTime(){
	var _thistime = new Date();
	var vtime = _thistime.getHours();
	if(vtime > 6 && vtime <= 10){
		return '早上好';
	}else if(vtime > 18 && vtime <= 23){
		return '晚上好';
	}else if((vtime > 0 && vtime <= 6) || vtime > 23){
		return '好梦';
	}else{
		return '您好';
	}
}
//@show&hide
function drawContent(a,object,_height){
	var title = $(a).text();
	if(title.indexOf('展开') > 0){
		$('#'+object).animate({ height: "100%" },400);
		if($('.d_open').length)
			$(a).removeClass('d_open').addClass('d_close');
		title = '▲收缩';
	}else{
		$('#'+object).animate({ height : _height },400);
		if($('.d_close').length)
			$(a).removeClass('d_close').addClass('d_open');
		title = '▼展开';
	}
	$(a).text(title);
}
//@dialogMsg
function dialogMsg(msg, style,showId)
{
	var showId = showId || $('#_dialogMsg');
	switch(style){
		case 1:
			showId.removeClass().addClass('wrong').show().html(msg);
			break;
		case 2:
			showId.removeClass().addClass('warning').show().html(msg);
			break;
		case 3:
			showId.hide();
			break;
	}
}
//addbook
function addBook(t,id){
	if(t.css('cursor') == 'wait'){
		return false;
	}else{
		t.css('cursor', 'wait');
	}
	$.ajax({
		url:JYUrl('Account','addBook'),
		type:'post',
		data: {type:t.attr('type'),id:id},
		dataType:'json',
		success:(function(e){
			if(e.code==1){
				if($('.is-like_on').length || $('#del_'+t.attr('type')+'_'+id).length){
					if($('.is-like_on').length){
						t.removeClass('is-like_on');
_msg = '\
<img class="tip-img" src="'+_default_img_path_+'/global/exclamatory-mark-large.jpg" height="63" width="63" alt="" />\
<div class="tip-text">\
	<strong>您已取消收藏！</strong>\
</div>';
					_alert(_msg,{padding:'0 30px 55px'});
					}else if($('#del_'+t.attr('type')+'_'+id).length){
						$('#del_'+t.attr('type')+'_'+id).hide('slow');
					}
				}else{
					t.addClass('is-like_on');
_msg = '\
<img class="tip-img" src="'+_default_img_path_+'/global/right_green.jpg" height="63" width="63" alt="" />\
<div class="tip-text">\
	<strong>收藏成功！</strong>\
</div>';
					_alert(_msg,{padding:'0 30px 55px'});
				}
			}else if(e.code==-99){
				_alert(e.msg,{css:'dialog_w340 tc'},function(){
					setTimeout("location.href = '"+e.link+"';", 1000);
				});
			}else{
				_alert(e.msg);
			}
			t.css('cursor', 'auto');
		})
	});
}
//@validate
function _validate(o, arge){
	var arge = arge || {};
	var truenamereg = /^[\u4E00-\u9FA5]{2,6}$|^[A-Za-z]{2,18}$/;
	var passwdreg = /^(?=.*\d)(?=.*[a-zA-Z])[\da-zA-Z\W]{8,20}$/;
	var birthreg = /^\d{4}-\d{1,2}-\d{1,2}$/;
	var phonereg = /^0?(13[0-9]|15[012356789]|18[0123456789]|14[57])[0-9]{8}$/;
	var emailreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9_]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	var contactreg = /(^(\d{3,4}-)?\d{7,8})$|((\(\d{3}\))|(\d{3}\-))?1[3-8][0-9]\d{8}?$|15[89]\d{8}$/; //联系方式，包括手机、 固话
	var numreg = /^[0-9]*[1-9][0-9]*$/;　　//正整数
	switch(o.attr('id')){
		//@浮动登录
	//@找回密码
	case '_findcard':
		if(!o.val()){
			dlg_msg(o, '证件号码不能为空');
		}else if($('#reglink').length>0){
			return false;
		}else{
			return true;
		}
		break;
	//@登录
	case '_username' :
		if(!o.val()){
			dlg_msg(o, '请输入手机号码或电子邮箱');
		}else{
			return true;
		}
		break;
	case '_password':
		if(!o.val()){
			dlg_msg(o,'请输入登录密码');
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	//@注册
	case '_regagree':
		if(!o.prop("checked")){
			dlg_msg(o, "请先阅读并同意注册许可协议");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	//@公共
	case '_phoneormail_':
		if(!o.val()){
			dlg_msg(o, "用户名不能为空");
		}else if(!phonereg.exec(o.val()) && !emailreg.exec(o.val())) {
			dlg_msg(o, "请输入正确的手机号码或电子邮箱");
		}else{
			return true;
		}
		break;
	case '_phone_'://@设置密码
		if(!o.val()){
			dlg_msg(o, "手机号码不能为空");
		}else if(!phonereg.test(o.val())){
			dlg_msg(o, "手机号码错误");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_card_'://@设置密码
		if(!o.val()){
			dlg_msg(o, "证件号码不能为空");
		}else{
			if($('#_card_type').val()=='01'){
				if(o.val().length!=15 || o.val().length!=18){
					dlg_msg(o, "请输入正确的身份证号码");
					return false;
				}
			}
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_pwd_'://@找回密码/设置密码/注册
		if(o.val() == ''){
			dlg_msg(o, '密码不能为空');
		}else if(!passwdreg.exec(o.val())){
			dlg_msg(o, '输入8-20位包含数字、大小写字母的密码');
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_repwd_'://@找回密码/设置密码/注册
		if(o.val() == ''){
			dlg_msg(o, '请输入重复密码');
		}else if(o.val() != $('#_pwd_').val()){
			dlg_msg(o, '重复密码不相同');
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_checkimgcode_'://@找回密码
		if(o.val()==''){
			dlg_msg(o, "验证码不能为空");
		}else if(o.val().length !=4){
			dlg_msg(o, "请输入有效的校验码，填入右边图片中的文字");
		}else{
			dlg_msg(o,'');
			return true;
		}
		break;
	case '_smscode_'://@发送短信验证码
		if(o.val().length!=4){
			dlg_msg(o, '请输入正确的验证码');
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_jyday_':
	case '_mbirth'://个人中心-出生日期
		var _stat = true;
		var _jytdate = '';
		o = arge.o ? arge.o : o;
		o.parent().children('select').each(function(){
			if($(this).val() == '0'){
				dlg_msg(o, '请选择正确的出生日期');
				_stat = false;
			}else{
				_jytdate = _jytdate + '-' + $(this).val();
			}
		})

		if(_stat){
			var thisbirth = arge.card;
			if(thisbirth.length==18){
				var y = thisbirth.substr(6,4);
				var m = thisbirth.substr(10,2);
				var d = thisbirth.substr(12,2);
				if([y,m,d].join('-')!=_jytdate.substr(1,11)){
					dlg_msg(o, "出生日期与身份证号码不一致");
				}else{
					dlg_msg(o, '');
					return _jytdate.substr(1,11);
				}
			}else{
				dlg_msg(o, '');
				return _jytdate.substr(1,11);
			}
		}
		break;
	case '_truename_'://成员姓名
		if(!o.val()){
			dlg_msg(o, "真实姓名不能为空");
		}else if(!truenamereg.exec(o.val())){
			dlg_msg(o, "实名才能预约，请输入真实姓名");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_icard_'://成员/证件号码
		if(!o.val()){
			dlg_msg(o, "证件号码不能为空");
		}else{
			if(o.prev('select').val()=='01'){
				if(o.val().length==15 || o.val().length==18){
					switch(o.val().length){
						case 15:
							sex = o.val().charAt(14);
							sex = (sex%2)==0?1:0;
							break;
						default:
							sex = o.val().charAt(16);
							sex = (sex%2)==0?1:0;
							var y = o.val().substr(6,4);
							var m = o.val().substr(10,2);
							var d = o.val().substr(12,2);
							$jybirth(y, m, d,{
								jyyear:o.parents('.t_info').find('._jyyear'),
								jymonth:o.parents('.t_info').find('._jymonth'),
								jyday:o.parents('.t_info').find('._jyday')});
					}

					o.parents('.t_info').find('._isex').each(function(){
						if($(this).val() == sex){
							$(this).attr('checked','checked');
						}
					})
				}else{
					dlg_msg(o, "请输入正确的身份证号码");
					return false;
				}
			}
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_email':
		if($("#no_email").attr("checked")){
			return true;
		}else{
			if(!o.val()){
				dlg_msg(o, "邮箱不能为空");
			}else if(!emailreg.exec(o.val())){
				dlg_msg(o, "邮箱地址不正确");
			}else{
				dlg_msg(o, '');
				return true;
			}
		}
		break;
	case '_agree':
		if(!o.attr("checked")){
			dlg_msg(o, "请先阅读许可协议");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_unit_name':
		if(!o.val()){
			dlg_msg(o, "医院名称不能空");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_phone':
		if(!o.val()){
			dlg_msg(o, "联系方式不能为空");
		}else if(!contactreg.test(o.val())){
			dlg_msg(o, "联系号码错误");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_unit_level':
		if(!o.val()){
			dlg_msg(o, "联系方式不能为空");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_outpatient':
		if(!o.val()){
			dlg_msg(o, "日门诊量不能为空");
		}else if(!numreg.test(o.val())){
			dlg_msg(o, "日门诊量为正整数");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
	case '_user_post':
		if(!o.val() || !$('#_user_name').val()){
			dlg_msg(o, "请填写您的姓名和职位");
		}else{
			dlg_msg(o, '');
			return true;
		}
		break;
		case '_nyusername' :
			if(!o.val()){
				dialogMsg('请输入手机号码或电子邮箱',1);
			}else{
				var type = 'phone';
				var userBool = true;
//				var phonereg = /^((\(\d{3}\))|(\d{3}\-))?1[3-8][0-9]\d{8}?$|15[89]\d{8}$/;
//				if(phonereg.test($(o).val())){
//					$.ajax({
//						url:'/user/checkpwd/type-'+type+'/username-'+$(o).val(),
//						type:'post',
//						dataType:'json',
//						async:false,
//						success:(function(de){
//							_login_state = 1;
//							if(de.code==1){
//								userBool = false;
//								_login_state = 0;
//								dialogMsg("您的账号尚未激活<br /><span class='clr3'>如果您已通过电话或医院现场成功预约过，<br/>请<a href='"+JYUrl("user","activate")+"'>账号激活</a>完成相应步骤，即可登录。</span>", 1);
//								$.cookieHelper('setpwd', [type,$(o).val()], {expires: 3600,path: '/', domain: $_ny_domain_});
//							}else if(de.code < 0){
//								userBool = false;
//								_login_state = 0;
//								dialogMsg(de.msg,1);
//							}else{
//								dialogMsg('',3);
//							}
//						})
//					});
//				}
				return userBool;
			}
			break;
		case '_nypassword':
			if(!o.val()){
				dialogMsg('请输入登录密码', 1);
			}else{
				dialogMsg('', 3);
				return true;
			}
			break;
		case '_nycheckcode':
			if(o.val().length!=4){
				dialogMsg('请输入有效的校验码，填入右边图片中的文字', 1);
			}else{
				dialogMsg('', 3);
				return true;
			}
			break;
		case '_nynewusername':
			if(!o.val()){
				return false;
//				dialogMsg('请输入手机号码或电子邮箱',1,$('#v4showmsg'));
//			}else{
//				var type = 'phone';
//				var userBool = true;
//				var phonereg = /^((\(\d{3}\))|(\d{3}\-))?1[3-8][0-9]\d{8}?$|15[89]\d{8}$/;
//				if(phonereg.test($(o).val())){
//					$.ajax({
//						url:'/user/checkpwd/type-'+type+'/username-'+$(o).val(),
//						type:'post',
//						dataType:'json',
//						async:false,
//						success:(function(de){
//							_login_state = 1;
//							if(de.code==1){
//								userBool = false;
//								_login_state = 0;
//								dialogMsg("该手机号码已存在，尚未激活，<a href='"+JYUrl("user","activate")+"'>请点此激活</a>",2);
//								$.cookieHelper('setpwd', [type,$(o).val()], {expires: 3600,path: '/', domain: $_ny_domain_});
//							}else if(de.code < 0){
//								userBool = false;
//								_login_state = 0;
//								dialogMsg(de.msg,1,$('#v4showmsg'));
//							}else{
//								dialogMsg('',3,$('#v4showmsg'));
//							}
//						})
//					});
//				}
//				return userBool;
			}else{
				return true;
			}
			break;
		case '_nynewpassword':
			if(!o.val()){
				return false;
//				dialogMsg('请输入登录密码', 1,$('#v4showmsg'));
			}else{
//				dialogMsg('', 3,$('#v4showmsg'));
				return true;
			}
			break;
	}

	return false;
}

//把标签不规范分隔符，替换为正常字符
$.fn.tagReplace = function(){
	return this.each(function(){
		$(this).keyup(function(){				
			var v = $(this).val();
			v = v.replace(/[，。；;、]/, ',');
			v = v.replace(',,', ',');
			$(this).val(v);
		});
	});
};

/**
 * 您还可以输入多少个字提示
 * @param {DOM} inObj 输入框html元素
 * @param {DOM} showObj 提示字符html元素
 * @param {int} minNum 最少输入字符数提示
 * @param {int} maxNum 最大输入字符数提示
 * @returns {undefined}
 */
function showInput(inObj, showObj, minNum, maxNum)
{
	var tips = ['您最少还须要输入<b class="clef9">num</b>个字符', 
		'您最多还可以输入<b class="clef9">num</b>个字符'];
	var numStr = minNum ? tips[0].replace('num', minNum) : tips[0].replace('num', maxNum);
	$(showObj).html(numStr);
	$(inObj).keyup(function(){
		var len = $(this).val().toString().length;
		if(minNum && len<minNum){
			var num = minNum - len;
			numStr = tips[0].replace('num', num);
			$(showObj).html(numStr);
		}else if(maxNum && maxNum>=len){
			var num = maxNum - len;
			numStr = tips[1].replace('num', num);
			$(showObj).html(numStr);
		}else{
			var docHtml = $(this).val().toString().substr(0, maxNum);
			$(this).val(docHtml);
		}
	});
}

$("._prvstart").click(function(){
        _alert('请稍候',{id:'_waitingdiv',lock:true});
	ajaxsetting={
		url:JYUrl('account','hasprv'),
		data:{},
		type:'post',
		dataType:'json',
		success:function(rel)
		{
            art.dialog({id:'_waitingdiv'}).close();
			if(rel.code==1)
			{
				if($('#dialoguecss').size()==0){
					$('head').append($("<link>").attr({
						id:'dialoguecss',
						type:"text/css",
						rel:'stylesheet',
						href:"http://webimg.91160.com/nykj/b=static/v4&f=style/dialogue.css?"+VERSION
					}));
				}
				if($("#dialoguejs").size()==0){
					$("body").append($('<script>').attr({
						id:'dialoguejs',
						type:"text/javascript",
						src:"http://webimg.91160.com/nykj/b=static/v4&f=common/dialogue.js?"+VERSION
					}))
				}
				if($("#addtest").size()==0){
					$('body').append($("<script>").attr({
						id:'addtest',
						type:"text/javascript",
						src:"http://webimg.91160.com/nykj/b=static/v4&f=common/test.js?"+VERSION
					}));
				}
				if($("#prvdoc_list").size()>0){
					$("#prv_doc_list_div").removeClass('none');
					$('#prv_doc_list_div').attr('style','top:'+($(document).scrollTop()+103.5)+'px; left: 293.5px;');
				}else{
					$('body').after(rel.html);
					$('#prv_doc_list_div').attr('style','top:'+($(document).scrollTop()+103.5)+'px; left: 293.5px;');
				}
				
				$('.priv_doc_lists').each(function() {
					var t = $(this).find('li.ditem');
					var tl = $(this).find('li').length;
							var rolBtn ="<div class='rolls-btn l0'><a href='javascript:void(0)' class='pres-btn' id='act-pre-btn'></a></div><div class='rolls-btn r0'><a href='javascript:void(0)' class='nexts-btn' id='act-next-btn'></a></div>";
							if (tl == 1) {
								$(this).addClass('oneDoc');
							}
							else if(tl > 2){
									// $(this).find('ul.prirollDIV').attr({
									// 	id: 'privDOCul'
									// });
									//$(this).append(rolBtn);
									var ShowPrediv1 = new ShowPrediv({box:"privDOCul",Pre:"act-pre-btnprv",Next:"act-next-btnprv",numIco:"act_rolls_num",loop:1,auto:1,w:200});
							};
					t.hover(function() {
							$(this).addClass('onCur');
					 }, function() {
							$(this).removeClass('onCur');							
					});
				});
			}else{
				_alert('您没有购买私人医生或者已经过期',{verify:true});
			}
		},
		error:function(rel){
		}
	}
	if($("#prv_doc_list_div").size()==0){
		$.ajax(ajaxsetting);
	}else{
		$("#prv_doc_list_div").removeClass("none");
		console.log('top:'+($(document).scrollTop()+103.5)+'px; left: 293.5px;');
		$('#prv_doc_list_div').attr('style','top:'+($(document).scrollTop()+103.5)+'px; left: 293.5px;');
                art.dialog({id:'_waitingdiv'}).close();
	}
});
function ShowPrediv(o){
	var that= this;
	this.box = $("#"+o["box"]);
	this.btnP = $("#"+o.Pre);
	this.btnN= $("#"+o.Next);
	this.v = o.v||1;
	this.c = 0;
	var li_node = "li";
	this.loop = o.loop||false;

	//循环生成dom
	if(this.loop){
		this.li =  this.box.find(li_node);
		this.box.append(this.li.eq(0).clone(true));
	};
	this.li = this.box.find(li_node);
	this.l = this.li.length;

	//滑动条件不成立
	if(this.l<=this.v){
		this.btnP.hide();
		this.btnN.hide();
	}else{
		this.btnP.show();
		this.btnN.show();
	};
	this.deInit = true;
	this.w = o.w||this.li.outerWidth(true);
	this.box.width(this.w*this.l);
	this.maxL = this.l - this.v;

	//要多图滚动 重新计算变量
	this.s = o.s||1;
	if(this.s>1){
		this.w = this.v*this.w;
		this.maxL = Math.floor(this.l/this.v);
		this.box.width(this.w*(this.maxL+1));
		//计算需要添加数量
		var addNum = (this.maxL+1)*this.v-this.l;
		var addHtml = "";
		for(var adN = 0;adN < addNum;adN++){
			addHtml += "<li class='addBox'><div class='photo'></div><div class='text'></div></li>";
		};
		this.box.append(addHtml);
	};
	
	//生成状态图标
	this.numIco = null;
	if(o.numIco){
		this.numIco  = $("#"+o.numIco);
		var numHtml = "";
		numL = this.loop?(this.l-1):this.l;
		for(var i = 0;i<numL;i++){
				numHtml+="<a href='javascript:void(0);'>"+i+"</a>";
		};
		this.numIco.html(numHtml);
		this.numIcoLi = this.numIco.find("a");
		this.numIcoLi.bind("click",function(){
			if(that.c==$(this).html())return false;
			that.c=$(this).html();
			that.move();
		});
	};
	this.bigBox = null;
	this.loadNumBox = null;
	if(o.loadNumBox){
		this.loadNumBox = $("#"+o.loadNumBox);
	};

	//当前序号设置
	this.allNumBox = null;
	if(o.loadNumBox){
		this.allNumBox = $("#"+o.allNumBox);
		if(o.bBox){
			var cAll = this.l<10?("0"+this.l):this.l;
		}else{
			var cAll = this.maxL<10?("0"+(this.maxL+1)):(this.maxL+1);
		};
		this.allNumBox.html(cAll);
	};

	//大图按钮点击操作
	if(o.bBox){
		this.bigBox = $("#"+o.bBox);
		this.li.each(function(n){
			$(this).attr("num",n);
			var cn = (n+1<10) ? ("0"+(n+1)):n+1;
			$(this).find(".text").html(cn);
		});
		this.loadNum = 0;
		this.li.bind("click",function(){
			if(that.loadNum==$(this).attr("num"))return false;
			var test = null;
			if(that.loadNum>$(this).attr("num")){
				test = "pre";
			};
			that.loadNum = $(this).attr("num");

			that.loadImg(test);
		});
		that.loadImg();
		if(o.bNext){
			that.bNext = $("#"+o.bNext);
			that.bNext.bind("click",function(){
				that.loadNum<that.l-1 ?that.loadNum++:that.loadNum=0;
				that.loadImg();
			});
		};
		if(o.bPre){
			that.bPre = $("#"+o.bPre);
			that.bPre.bind("click",function(){
				that.loadNum> 0? that.loadNum--:that.loadNum=that.l-1 ;
				that.loadImg("pre");
			});
		};
	};

	//滑动点击操作(循环or不循环)
	if(this.loop){
		this.btnP.bind("click",function(){
			if(that.c<=0){
				that.c = that.l-1;
				that.box.css({left:-that.c*that.w});		
			};
			that.c --;
			that.move(1);
		});
		this.btnN.bind("click",function(){
			if(that.c>=(that.l-1)){
				that.box.css({left:0});		
				that.c = 0;
			};
			that.c++;
			that.move(1);
		});
	}else{
		this.btnP.bind("click",function(){
			that.c> 0? that.c--:that.c=that.maxL ;
			that.move(1);
		});
		this.btnN.bind("click",function(){
			that.c<that.maxL ?that.c++:that.c=0;
			that.move(1);
		});
	};
	that.timer = null;
	if(o.auto){
		that.box.bind("mouseover",function(){
			clearInterval(that.timer);
		});
		that.box.bind("mouseleave",function(){
			that.autoPlay();
		});
		that.autoPlay();
		
	};
	this.move();
}

ShowPrediv.prototype = {
	move:function(test){ //滑动方法
		var that = this;
		var pos = this.c*this.w;
		//document.title = (test&&that.timer);
		if(test&&that.timer){
			clearInterval(that.timer);
		};
		//当前序号图标
		if(that.numIco){ 
			that.numIcoLi.removeClass("on");
			var numC = that.c;
			if(that.loop&&(that.c==(this.l-1))){
				numC= 0;	
			};
			that.numIcoLi.eq(numC).addClass("on");
		};

		this.box.stop();
		this.box.animate({left:-pos},function(){
			if(test&&that.auto){
				that.autoPlay();
			};
			if(that.loop&&that.c==that.maxL){
				that.c = 0;
				that.box.css({left:0})
			};
		});
		if(that.bigBox)return false;
		//设置大图加载序号
		if(that.loadNumBox){
			var loadC = parseInt(that.c)+1;
				loadC = loadC<10?"0"+loadC:loadC;
				that.loadNumBox.html(loadC);
		};

	},
	loadImg:function(test){ //加载大图方法
		var that = this;
		var _src = this.li.eq(that.loadNum).attr("bsrc"),bigTh3=null,bigTh4=null,bigText=null;
		if(that.li.eq(that.loadNum).attr("data-h")){
			//$("#bigT h3").html(that.li.eq(that.loadNum).attr("data-h"));
			var bigTh3 = $("#bigT h3");
			$("#bigT").hide();
			bigTh3.html("");
		};
		if(that.li.eq(that.loadNum).attr("data-m")){
			//$("#bigT h4").html(that.li.eq(that.loadNum).attr("data-m"));
			var bigTh4 = $("#bigT h4");
			$("#bigT").hide();
				bigTh4.html("");
		};
		if(that.li.eq(that.loadNum).attr("data-text")){
			//$("#bigText").html(that.li.eq(that.loadNum).attr("data-text"));
			var bigText = $("#bigText");
				bigText.html("").hide();
		};
		var img = new Image();
			$(img).hide();
			//loading dom操作(分首次加载和后面加载，根据点击操作设置运动方向)
			if(that.deInit){
				var le = 0;
				that.deInit = false;
				that.bigBox.html("<div class='loading'></div><div class='loading'></div>");
			}else{
				if(test!="pre"){
					var le = -1230;
					that.bigBox.append("<div class='loading'></div>");
				}else{
					var le = 1230;
					that.bigBox.find(".loading").before("<div class='loading'></div>");
					that.bigBox.css({"margin-left":-1230});
					le = 0;
				};				
			};
			that.bigBox.animate({"margin-left":le},function(){
				$(img).bind("load",function(){
					//判断出现方向
					if(test!="pre"){
						var n = 1,oldN = 0;
					}else{
						var n = 0,oldN = 1;
					};
					that.bigBox.find(".loading").eq(n).html(img);
					that.bigBox.find(".loading").eq(oldN).remove();
					that.bigBox.css({"margin-left":0});
					$(this).fadeIn(200,function(){
						if(bigTh3){
							$("#bigT").fadeIn()
							bigTh3.html(that.li.eq(that.loadNum).attr("data-h"));
						};
						if(bigTh4){
							$("#bigT").fadeIn()
							bigTh4.html(that.li.eq(that.loadNum).attr("data-m"));
						};
						if(bigText){
							bigText.html(that.li.eq(that.loadNum).attr("data-text")).fadeIn();
						};
					});
				});
				img.src = _src;
			});
			//添加当前加载序号
			that.li.removeClass("on");
			that.li.eq(that.loadNum).addClass("on");
			if(that.loadNumBox){
				var loadC = parseInt(that.loadNum)+1;
					loadC = loadC<10?"0"+loadC:loadC;
					that.loadNumBox.html(loadC);
			};
			
			
	},
	autoPlay:function(){ //自动播放方法
		var that =this;

		that.timer = setInterval(function(){
			that.c<that.maxL?that.c++:that.c=0;
			that.move();
		},4000);
	}
}
/**
 * 判断用户是否登录，并弹出登录窗
 * @param function func 登录成功后的回调方法
 */
function userLoginBox(func)
{
	//判断是否已登录
	if($('#_jy_show_usrname_').text()){
		if(func){
			func();
		}
		return true;
	}
    //验证码开始隐藏，输错3次显示
	if($('.errnum').val()<3){
		$('#showCode').hide();
	}else{
		$('#showCode').show();
	}
	//如果登录隐藏窗存在，显示登录窗
	if($('#_login_tipsid_').length){ 
		_alert(
			$('#_login_tipsid_').html(), 
			{id:'_login_tips_id_',time:777,title:'登录'},
			function(){
				var _ny_login_state = 1;
				var _nyusername = $('#_nyusername');
				var _nypassword = $('#_nypassword');
				var _nycheckcode = $('#_nycheckcode');
				var _sub_login = $('#_nysub_login');
				var _c_nyname = $.cookieHelper('login_username');

				if(_c_nyname!=null)_nyusername.val(_c_nyname);

				_nyusername.on('click',function(){
					$(this).select();
         });

				_nyusername.on('blur', function(){
					_validate(_nyusername);
				});

				_nypassword.on('blur', function(){
					_validate(_nypassword);
				});

				_nycheckcode.on('blur', function(){
					_validate(_nycheckcode);
				});

				_nypassword.on('keydown', function(event){
					var evt = window.event || event;
					if (evt.keyCode == 13){
						_sub_login.click();return false;
    }
				});
				//点击更新验证码
				$('._change_code').on('click',function(){
					$('img._change_code').attr('src',JYUrl('Images','code',{'h':25,'w':70,'i':'dologin'})+'?'+Math.random());
				});
				//点击登录按钮
				_sub_login.on('click',function(){
					if(_validate(_nyusername)
					&& _ny_login_state
					&& _validate(_nypassword)
					&& ($('#showCode').is(':visible') == false ? true : _validate(_nycheckcode))){
						var t = $(this);
						if(t.css('cursor')== 'wait'){
							return false;
						}else{
							t.css('cursor','wait');
						}
						
						var realLength = 0, str = _nypassword.val(), len = str.length, charCode = -1;
					    for (var i = 0; i < len; i++) {
					        charCode = str.charCodeAt(i);
					        if (charCode >= 0 && charCode <= 128) realLength += 1;
					        else realLength += 2;
					    }
					    
					    if(realLength < 32){
					    	var mw = encMe('JY91160',_nypassword.val());
					    	_nypassword.val(mw);
					    }
						
						/*$.ajax({
							url : 'http://user.91160.com/login.html',
							type:'post',
							dataType : 'json',
							data: {
								username:_nyusername.val(),
								password:_nypassword.val(),
								checkcode:_nycheckcode.val(),
								target:window.location.href
							},
							success : function(json){
								if(json.code == 1){
									art.dialog({id:'_login_tips_id_'}).close();	
									//设置登录状态
									setLogin('_status_login_div','_status_logout_div',json.data);																	
									if(func){
										func();
									}
									$('._change_code').click();
								}else if(json.error_num >=3){
									$('#showCode').show();
									$('.errnum').val(json.error_num);
								}else if(json.code==-7){
									$('._change_code').click();
									dialogMsg(json.msg, 1);
								}
								t.css('cursor','pointer');
							}
						});*/
					}
					return false;
				});
			});
	} 
	return false;
}

function showProCity(obj,area_id){
	obj.siblings().removeClass('cur');
	obj.addClass('cur');
	$.ajax({
		url : JYUrl('main', 'ajaxgetcitys'),
		type:'post',
		dataType : 'json',
		data: {
			areaid:area_id
		},
		success : function(json){
			if(json.code == 1){
				var html='';
				html+='<ul>';
				for(var k in json.citys){
					html+='<li><a href="http://'+json.citys[k].area_code+'.91160.com/">'+json.citys[k].area_name+'</a></li>';
				}
				html+='</ul>';
				$('#show_citys').html(html);
			}
		}
	});
}
/**
 * 提示窗
 * @param string msg 消息
 * @param int tm 自动关闭时间0为不自动关闭，默认为3秒
 * @parm int cls 样式0:无样式，1:成功，2:失败，3:询问
 * @param function func 回调函数
 * @param bool lock 是否显示透明背景,-1为不显示背景
 * @returns 
 */
function Dalert(msg, tm, cls, func, lock)
{
	if(!msg) return false;
	
	tm = tm || 0;
	cls = cls || 0;
	
	var setting = {title:false, lock:false, id:'Dalert'};
	if(lock != -1){
		setting.lock = true;
		setting.opacity = 0.4;
	}
	art.dialog(setting).close();
	//设置自动关闭时长
	if(tm > 0){
		setting.time = tm;
	}
	
	//设置显示样式
	var typeArr = ['alert_normal', 'alert_ok', 'alert_fail', 'alert_answer'];
	setting.content = '<div class="Dalert"><div class="'+typeArr[cls]+'">'+msg+'</div></div>';
	
	//判断回调方法
	if(func){
		setting.content += '<div class="DButton"><button class="DbtnOk" id="DalertOK">确认</button><button class="DbtnCancel" id="DalertCancel">取消</button></div>';
		setting.lock = true;
		setting.opacity = 0.4;
		art.dialog(setting);
		//确认按键事件
		document.getElementById('DalertOK').onclick = function(){
			func();
			art.dialog({id:'Dalert'}).close();
		};
		//取消按键事件
		document.getElementById('DalertCancel').onclick = function(){art.dialog({id:'Dalert'}).close();}
		return true;
	}
	
	return art.dialog(setting);
}
/**
 * 关闭提示窗
 * @returns {undefined}
 */
function Dclose()
{
	art.dialog({id:'Dalert'}).close();
}

/**
 * 进行中弹出窗
 * 
 * @param bool isClose true:关闭/false:显示 
 * @param int closeTm 自动关闭时长0:不自动关闭
 * @returns 
 */
function Dloading(isClose, closeTm)
{
	var isClose = isClose || false;
	var closeTm = closeTm || 30;
	var dkey = 'DalertLoading';
	if(isClose){
		art.dialog({id:dkey}).close();
		return true;
	}
	
	art.dialog({
		title:false,
		id:dkey,
		time:closeTm,
		content:'<div class="Dloading">&nbsp;</div>'		
	});
}

/**
 * 验证用户社会保险号的正确性
 * 
 * @param string computeId 社保电脑号
 * @parm string cardId 身份证号码
 * @returns bool
 */
function validSocialCard(cardId, computeId)
{
	var validFlag = {code:0, msg:'您的社保卡号填写有误'};
	
	//检查社保格式
	var rule = /^\d{6,12}$/;
	if(!rule.test(computeId)){
		return validFlag;
	}
	//显示loading图标
	Dloading();
	$.ajax({
		url:JYUrl('interface', 'ajaxSocialValid'),
		type:'post',
		data:{compute_id:computeId, card_id:cardId},
		dataType:'json',
		async:false,
		success:function(rel){
			validFlag = rel;
		}
	});
	
	Dloading(true);
	return validFlag;
} 


/**
 * 获取url中的参数
 * @parm string cardId 身份证号码
 * @returns bool
 */
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
