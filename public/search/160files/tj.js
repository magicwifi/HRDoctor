document.write("<script src='http://pv.sohu.com/cityjson?ie=utf-8' type='text/javascript'></script>");var statIdName="vlstatId";function setCookie(c_name,value,expiredays){var exdate=new Date();exdate.setDate(exdate.getDate()+expiredays);document.cookie=c_name+"="+escape(value)+((expiredays==null)?"":";expires="+exdate.toGMTString())+";path=/;domain=91160.com";}
function getCookie(c_name){if(document.cookie.length>0){c_start=document.cookie.indexOf(c_name+"=");if(c_start!=-1){c_start=c_start+c_name.length+1;c_end=document.cookie.indexOf(";",c_start);if(c_end==-1){c_end=document.cookie.length;}
return unescape(document.cookie.substring(c_start,c_end));}}
return"";}
function getTimestamp(){var timestamp=Date.parse(new Date());return timestamp;}
function genStatId(){var cookieId=getTimestamp();cookieId="vlstat"+"-"+cookieId+"-"+Math.round(Math.random()*3000000000);return cookieId;}
function setStatId(){var cookieId=genStatId();setCookie(statIdName,cookieId,365);}
function getStatId(){var statId=getCookie(statIdName);if(statId!=null&&statId.length>0){return statId;}else{setStatId();return getStatId();}}
function newUser(){var userId=document.cookie.indexOf(statIdName);if(userId==-1){return"0"}else{return"1"}}
var newUserCon=newUser();function getUA(){var ua=navigator.userAgent;if(ua.length>250){ua=ua.substring(0,250);}
return ua;}
function getBrower(){var ua=getUA();if(ua.indexOf("Opera")!=-1){return('Opera');}
else if(ua.indexOf("MSIE")!=-1){return('Internet Explorer');}
else if(ua.indexOf("Firefox")!=-1){return('Firefox');}
else if(ua.indexOf("Chrome")!=-1){return('Chrome');}
else if(ua.indexOf("Netscape")!=-1){return('Netscape');}
else if(ua.indexOf("Safari")!=-1){return('Safari');}
else{return('无法识别的浏览器。');}}
function getPlatform(){var ua=navigator.userAgent;if(ua.indexOf("Windows NT 5.1")!=-1)return"Windows XP";if(ua.indexOf("Windows NT 6.0")!=-1)return"Windows Vista";if(ua.indexOf("Windows NT 6.1")!=-1)return"Windows 7";if(ua.indexOf("Windows NT 6.2")!=-1)return"Windows 8";if(ua.indexOf("Windows NT 10.0")!=-1)return"Windows 10";if(ua.indexOf("iPhone")!=-1)return"iPhone";if(ua.indexOf("iPad")!=-1)return"iPad";if(ua.indexOf("Linux")!=-1){var index=ua.indexOf("Android");if(index!=-1){var os=ua.slice(index,index+13);var index1=ua.lastIndexOf(";");var index2=ua.indexOf("Build");var type=ua.slice(index1+1,index2);return type+os;}else{return"Linux";}}
return"Unknow";}
function equipment_manufacturer(){var ua=navigator.userAgent;if(ua.indexOf("Linux")!=-1){var index=ua.indexOf("Android");if(index!=-1){var index1=ua.lastIndexOf(";");var index2=ua.indexOf("Build");var type=ua.slice(index1+1,index2);return type;}else{return"Linux";}}
if(ua.indexOf("iPhone")!=-1){var userH=window.screen.height
var userW=window.screen.width
if(userW==414&&userH==736){return"iphone6 plus";}else if(userW==375&&userH==667){return"iphone 6";}else if(userW==320&&userH==568){return"iphone 5/5s";}else if(userW==320&&userH==480){return"iphone 4/4s";}else{return"unknow";}}
return"unknow";}
function access_device(){var sUserAgent=navigator.userAgent.toLowerCase();var bIsIpad=sUserAgent.match(/ipad/i)=="ipad";var bIsIphoneOs=sUserAgent.match(/iphone os/i)=="iphone os";var bIsMidp=sUserAgent.match(/midp/i)=="midp";var bIsUc7=sUserAgent.match(/rv:1.2.3.4/i)=="rv:1.2.3.4";var bIsUc=sUserAgent.match(/ucweb/i)=="ucweb";var bIsAndroid=sUserAgent.match(/android/i)=="android";var bIsCE=sUserAgent.match(/windows ce/i)=="windows ce";var bIsWM=sUserAgent.match(/windows mobile/i)=="windows mobile";if(bIsIpad||bIsIphoneOs||bIsMidp||bIsUc7||bIsUc||bIsAndroid||bIsCE||bIsWM){if(bIsIpad)return"ipad";if(bIsIphoneOs)return"iphone";if(bIsAndroid)return"android mobile";if(bIsWM)return"windows mobile";return"other mobile";}
else{return"pc";}}
function screen_resolution(){var userScreen=window.screen.width+"X"+window.screen.height;return userScreen;};function screen_color(){var screen_color=screen.colorDepth+"-bit";return screen_color;};function language_environment(){var wn=window.navigator;var href=location.href;if((wn.systemLanguage=="zh-cn"||wn.language=="zh-CN")&&href.indexOf("id=191")==-1){return"zh-cn"}
else if((wn.systemLanguage=="en"||wn.language=="zh-EN")&&href.indexOf("id=471")==-1){return"zh-en"}}
function support_cookie()
{var result="0";if(navigator.cookiesEnabled)
return true;document.cookie="testcookie=yes;";var cookieSet=document.cookie;if(cookieSet.indexOf("testcookie=yes")>-1)
result="1";document.cookie="";return result;}
function flash_version(){var f="-",n=navigator;if(n.plugins&&n.plugins.length){for(var ii=0;ii<n.plugins.length;ii++){if(n.plugins[ii].name.indexOf('Shockwave Flash')!=-1){f="Flash "+n.plugins[ii].description.split('Shockwave Flash ')[1];break;}}}else if(window.ActiveXObject){for(var ii=10;ii>=2;ii--){try{var fl="Flash "+eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."+ii+"');");if(fl){f=ii+'.0';break;}}catch(e){}}}
return f;}
function currentTime(){var now=new Date();var year=now.getFullYear();var month=now.getMonth()+1;var date=now.getDate();var hours=now.getHours();var minutes=now.getMinutes();var seconds=now.getSeconds();var currentTime=year+"-"+month+"-"+date+"-"+hours+":"+minutes+":"+seconds;return currentTime;}
function createXMLHttpRequest(){if(window.ActiveXObject){xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');}else if(window.XMLHttpRequest){xmlHttp=new XMLHttpRequest();}}
$(function(){var postdata={'browser':getBrower(),'operateSystem_version':getPlatform(),'currentUrl':encodeURIComponent(document.URL),'previousUrl':encodeURIComponent(document.referrer),'cookieId':getStatId(),'newUser':newUserCon,'currentTime':currentTime(),'ip':returnCitySN["cip"],'area':returnCitySN["cname"],'access_device':access_device(),'screen_resolution':screen_resolution(),'screen_color':screen_color(),'language_environment':language_environment(),'support_cookie':support_cookie(),'equipment_manufacturer':equipment_manufacturer(),'flash_version':flash_version()};$.ajax({type:"get",async:false,url:"http://collect.91160.com/logStatistics/",dataType:"jsonp",data:postdata,jsonp:"callbackparam",jsonpCallback:"success_jsonpCallback"});});