<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br" xml:lang="pt-br">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<title>POSTix</title>
		<meta name="robots" content="index,follow" />
		<meta name="keywords" content="keywords" />
		<meta name="description" content="" />
		<%--<link rel="shortcut icon" href="./favicon.ico">--%>

		<link rel="stylesheet" type="text/css" media="screen" href='../css/style.css' />
		<script type="text/javascript" src="../js/iepngfix_tilebg.js"></script>
		
		<!-- *** MyCSSMenu copyright (c) 2007, MyCSSMenu. All Rights Reserved.-->

        <style type="text/css">


        

        /***************************** APAGAR AQUI DEPOIS QUE PULICAR O SITE *******************************/
        html {font-size:100.01%}
        body {color:#FFF; font:.625em verdana, arial, sans-serif; text-align:center; background-color:#9FAEC3;}
        * { margin:0; padding:0;}
        div, img, h1, h2 span, a { behavior: url("css/iepngfix.htc") }
        hr {display:none}
        ul {list-style-image:none; list-style-position:outside; list-style-type:none;}
        .replace, .sites li a, .sites li strong, .twitter li a, .twitter li strong {overflow:hidden; padding:0; position:relative}
        .replace a span, a.replace span, .sites li a span, .twitter li a span {cursor:pointer}
        .replace span, .sites li span, .twitter li span {background-position:0 0; background-repeat:no-repeat; left:0; position:absolute; top:0}
        #container {background:transparent url(imgs/bg-site.jpg) no-repeat scroll 0 0; height:1200px; margin:0 auto; text-align:left; width:1003px; }
        #header{height:230px; padding-top:10px; width:1003px}
        #header h1 {background-image:url(imgs/Postix.png); display:inline; float:left;margin:20px 0px 0px 55px; }
        #header h1 {font-size:4em; font-weight:normal; height:100px; width:330px}
        #header h1 span {font-size:4em; font-weight:normal; height:214px; width:185px}
        #header h1 span {display:none;}
        #header #flash_suspenso {float:center; height:220px; width:1003px; margin:0 0 0 0;}
        h2, h3 {font-size:1.6em}
        #content {margin:0 0 0 0;width:1003px}
        #menu {background-image:url(imgs/menu.png); margin:0 0 0 0; text-align:right; width:993px; height:20px; padding:5px;}
        .itens {font-size:13px; list-style:none; margin-top:0px; margin-left:250px; margin-right:auto; }
        .itens li{float:left; width:100px; max-width:80px; background:url(imgs/separador.gif) right bottom no-repeat; text-align:center;}
        .itens li #selecionado{text-decoration:none; color:#700; cursor:default;}
        .itens li #naoSelecionado{color:#00121e; text-decoration:none;}
        .itens li #naoSelecionado:visited{color:#00121e; text-decoration:none;}
        .itens li #naoSelecionado:hover{color:#700; text-decoration:underline;}
        .itens li #home{margin-right:20px;}

        #menu-esq, #menu-dir {float:left;margin:0 0 0 10px; width:231px}
        #menu-parceiros {
                     background-image:url(imgs/bg-menu-parceiros.png);
	             width:218px;
                     height:375px;
                     padding-top:0px;
                     position:relative;}
        #menu-parceiros h2 {margin:0px 0px 0px 20px;} 
        #menu-parceiros h2, #menu-parceiros h2 span {font-size:3em; font-weight:normal; height:35px; width:180px}
        #menu-parceiros h2 span {background-image:url(imgs/parceiros.png)}
        .sites li, .sites li span {display:inline; float:left; height:65px; line-height:60px; text-align:center; text-decoration:none; width:120px}
        .sites li.site1 span {background-image:url(imgs/ttl-blog1.jpg)}
        .sites li.site2 span {background-image:url(imgs/ttl-blog2.jpg)}
        .sites li.site3 span {background-image:url(imgs/ttl-blog3.jpg)}
        .sites li.site4 span {background-image:url(imgs/ttl-blog4.gif)}
        #menu-destaques {
                     background-image:url(imgs/bg-menu-destaques.png);
	             width:218px;
                     height:600px;
                     padding-top:0px;
                     position:relative;}
        #menu-destaques h2 {margin:0px 0px 0px 20px;} 
        #menu-destaques h2, #menu-destaques h2 span {font-size:3em; font-weight:normal; height:35px; width:180px}
        #menu-destaques h2 span {background-image:url(imgs/destaques.png)}
        .sites li, .sites li span {display:inline; float:left; height:65px; line-height:60px; text-align:center; text-decoration:none; width:120px}
        .sites li.site1 span {background-image:url(imgs/ttl-blog1.jpg)}
        .sites li.site2 span {background-image:url(imgs/ttl-blog2.jpg)}
        .sites li.site3 span {background-image:url(imgs/ttl-blog3.jpg)}
        .sites li.site4 span {background-image:url(imgs/ttl-blog4.gif)}
        #menu-twitter {
                     background-image:url(imgs/bg-menu-twitter.png);
                     width:218px;
                     height:225px;
                     padding-top:0px;}
        #menu-twitter h2 {margin:0px 0px 0px 20px;} 
        #menu-twitter h2, #menu-twitter h2 span {font-size:3em; font-weight:normal; height:35px; width:180px}
        #menu-twitter h2 span {background-image:url(imgs/twitter.png)}
        #menu-twitter ul {margin:10px 0 0 42px}
        #menu-twitter li, #menu-twitter li a {width:65px; text-align:justify; margin:0 8px 10px 0}
        .twitter li, .twitter li a {display:inline; float:left; height:63px; text-align:center; text-decoration:none;}
        .twitter li.twitter1 a {background:url(imgs/flavio.png) top left no-repeat;}
        .twitter li.twitter1 span {display:none}
        .twitter li.twitter2 a {background:url(imgs/twitter_usuario.png) top left no-repeat;}
        .twitter li.twitter2 span {display:none}
        .twitter li.twitter3 a {background:url(imgs/twitter_usuario.png) top left no-repeat;}
        .twitter li.twitter3 span {display:none}
        .twitter li.twitter4 a {background:url(imgs/twitter_usuario.png) top left no-repeat;}
        .twitter li.twitter4 span {display:none}
        #logo-pequeno {background-image:url(imgs/logo-pequeno.png);height:80px; margin:-45px 0 0 320px; width:75px;}
        #main {background-image:url(imgs/bg-div-main.png); float:left;height:600px;width:511px;}
        #main2 {background-image:url(imgs/bg-div-main2.png); float:left;height:600px;width:740px;}
        #main h2, #main2 h2 {margin:-37px 0 0 585px;} 
        #main h2, #main h2 a, #main2 h2, #main2 h2 a {font-size:3em; font-weight:normal; height:156px; width:155px}
        #main h2 span, #main2 h2 span {background-image:url(img/bt-mande-seu-texto.png); height:156px; width:155px}
        /*
          #main h2 a{position:relative;  width:155px; height:156px; display:block;}
        #main h2 a span{position:absolute;top:0;left:0;width:100%;height:100%;background:url(img/bt-mande-seu-texto.png) top left no-repeat;cursor:pointer;}
          */
        #main #texto {font-size:14px; color:#00121e; margin:30px 0px 0px 30px;width:455px;}
        #main2 #texto2 {font-size:14px; color:#00121e; margin:30px 0px 0px 30px;width:690px;}
        #main2 #texto2 #FrameMain {height:450px;width:690px;}
        #main #texto p {margin-bottom:20px}
        #main2 #texto2 p {margin-bottom:20px}
        #main #texto p strong {color:#b50900}
        #main2 #texto2 p strong {color:#b50900}
        #galera{margin-top:-26px;}
        #footer{clear:both; background:#999; text-align:left; width:993px; padding:5px; margin:0 auto}
        /***************************** APAGAR ATÉ AQUI DEPOIS QUE PULICAR O SITE *******************************/







        .qmmc .qmdivider{display:block;font-size:1px;border-width:0px;border-style:solid;position:relative;z-index:1;}.qmmc .qmdividery{float:left;width:0px;}.qmmc .qmtitle{display:block;cursor:default;white-space:nowrap;position:relative;z-index:1;}.qmclear {font-size:1px;height:0px;width:0px;clear:left;line-height:0px;display:block;float:none !important;}.qmmc {position:relative;zoom:1;z-index:10;}.qmmc a, .qmmc li {float:left;display:block;white-space:nowrap;position:relative;z-index:1;}.qmmc div a, .qmmc ul a, .qmmc ul li {float:none;}.qmsh div a {float:left;}.qmmc div{visibility:hidden;position:absolute;}.qmmc li {z-index:auto;}.qmmc ul {left:-10000px;position:absolute;z-index:10;}.qmmc, .qmmc ul {list-style:none;padding:0px;margin:0px;}.qmmc li a {float:none}.qmmc li:hover>ul{left:auto;}#qm0 li {float:none;}#qm0 li:hover>ul{top:0px;left:100%;}
        .qmmc {margin:50px 0px 0px 20px;} 
	        /* MyCSSMenu 0 */

	        /*"""""""" (MAIN) Container""""""""*/	
	        #qm0	
	        {	
		        width:175px;
		        background-color:#E5E0E0;
		        border-width:10px 1px 1px 1px;
		        border-style:solid;
		        border-color:#706666;
	        }


	        /*"""""""" (MAIN) Items""""""""*/	
	        #qm0 a	
	        {	
		        padding:3px 40px 3px 8px;
		        color:#3E3F2B;
		        font-family:Arial;
		        font-size:12px;
		        text-decoration:none;
		        border-width:1px;
		        border-style:dashed;
		        border-color:#E5E7DB;
		        cursor:pointer;
	        }


	        /*"""""""" (MAIN) Hover State""""""""*/	
	        #qm0 a:hover	
	        {	
		        text-decoration:underline;
	        }


	        /*"""""""" (MAIN) Active State""""""""*/	
	        body #qm0 .qmactive, body #qm0 .qmactive:hover	
	        {	
		        background-color:#EEECEC;
		        color:#65030A;
		        text-decoration:underline;
	        }


	        /*"""""""" (SUB) Container""""""""*/	
	        #qm0 div, #qm0 ul	
	        {	
		        width:auto;
		        padding:5px;
		        margin:0px 0px 0px -1px;
		        background-color:#E5E0E0;
		        border-width:1px;
		        border-style:solid;
		        border-color:#7C7F57;
	        }


	        /*"""""""" (SUB) Items""""""""*/	
	        #qm0 div a, #qm0 ul a	
	        {	
		        padding:1px 40px 2px 5px;
		        border-width:1px 0px 1px 0px;
		        border-style:none;
		        border-color:#F0F1EA;
	        }


        </style><!-- Core MyCSSMenu Code -->
        <script type="text/javascript">/* <![CDATA[ */var qm_si,qm_li,qm_lo,qm_tt,qm_th,qm_ts,qm_la,qm_ic,qm_ib;var qp="parentNode";var qc="className";var qm_t=navigator.userAgent;var qm_o=qm_t.indexOf("Opera")+1;var qm_s=qm_t.indexOf("afari")+1;var qm_s2=qm_s&&qm_t.indexOf("ersion/2")+1;var qm_s3=qm_s&&qm_t.indexOf("ersion/3")+1;var qm_n=qm_t.indexOf("Netscape")+1;var qm_v=parseFloat(navigator.vendorSub);;function qm_create(sd,v,ts,th,oc,rl,sh,fl,ft,aux,l){var w="onmouseover";var ww=w;var e="onclick";if(oc){if(oc=="all"||(oc=="lev2"&&l>=2)){w=e;ts=0;}if(oc=="all"||oc=="main"){ww=e;th=0;}}if(!l){l=1;qm_th=th;sd=document.getElementById("qm"+sd);if(window.qm_pure)sd=qm_pure(sd);sd[w]=function(e){qm_kille(e)};document[ww]=qm_bo;if(oc=="main"){qm_ib=true;sd[e]=function(event){qm_ic=true;qm_oo(new Object(),qm_la,1);qm_kille(event)};document.onmouseover=function(){qm_la=null;clearTimeout(qm_tt);qm_tt=null;};}sd.style.zoom=1;if(sh)x2("qmsh",sd,1);if(!v)sd.ch=1;}else  if(sh)sd.ch=1;if(oc)sd.oc=oc;if(sh)sd.sh=1;if(fl)sd.fl=1;if(ft)sd.ft=1;if(rl)sd.rl=1;sd.style.zIndex=l+""+1;var lsp;var sp=sd.childNodes;for(var i=0;i<sp.length;i++){var b=sp[i];if(b.tagName=="A"){lsp=b;b[w]=qm_oo;if(w==e)b.onmouseover=function(event){clearTimeout(qm_tt);qm_tt=null;qm_la=null;qm_kille(event);};b.qmts=ts;if(l==1&&v){b.style.styleFloat="none";b.style.cssFloat="none";}}else  if(b.tagName=="DIV"){if(window.showHelp&&!window.XMLHttpRequest)sp[i].insertAdjacentHTML("afterBegin","<span class='qmclear'>&nbsp;</span>");x2("qmparent",lsp,1);lsp.cdiv=b;b.idiv=lsp;if(qm_n&&qm_v<8&&!b.style.width)b.style.width=b.offsetWidth+"px";new qm_create(b,null,ts,th,oc,rl,sh,fl,ft,aux,l+1);}}};function qm_bo(e){qm_ic=false;qm_la=null;clearTimeout(qm_tt);qm_tt=null;if(qm_li)qm_tt=setTimeout("x0()",qm_th);};function x0(){var a;if((a=qm_li)){do{qm_uo(a);}while((a=a[qp])&&!qm_a(a))}qm_li=null;};function qm_a(a){if(a[qc].indexOf("qmmc")+1)return 1;};function qm_uo(a,go){if(!go&&a.qmtree)return;if(window.qmad&&qmad.bhide)eval(qmad.bhide);a.style.visibility="";x2("qmactive",a.idiv);};;function qa(a,b){return String.fromCharCode(a.charCodeAt(0)-(b-(parseInt(b/2)*2)));};function qm_oo(e,o,nt){if(!o)o=this;if(qm_la==o&&!nt)return;if(window.qmv_a&&!nt)qmv_a(o);if(window.qmwait){qm_kille(e);return;}clearTimeout(qm_tt);qm_tt=null;qm_la=o;if(!nt&&o.qmts){qm_si=o;qm_tt=setTimeout("qm_oo(new Object(),qm_si,1)",o.qmts);return;}var a=o;if(a[qp].isrun){qm_kille(e);return;}if(qm_ib&&!qm_ic)return;var go=true;while((a=a[qp])&&!qm_a(a)){if(a==qm_li)go=false;}if(qm_li&&go){a=o;if((!a.cdiv)||(a.cdiv&&a.cdiv!=qm_li))qm_uo(qm_li);a=qm_li;while((a=a[qp])&&!qm_a(a)){if(a!=o[qp]&&a!=o.cdiv)qm_uo(a);else break;}}var b=o;var c=o.cdiv;if(b.cdiv){var aw=b.offsetWidth;var ah=b.offsetHeight;var ax=b.offsetLeft;var ay=b.offsetTop;if(c[qp].ch){aw=0;if(c.fl)ax=0;}else {if(c.ft)ay=0;if(c.rl){ax=ax-c.offsetWidth;aw=0;}ah=0;}if(qm_o){ax-=b[qp].clientLeft;ay-=b[qp].clientTop;}if(qm_s2&&!qm_s3){ax-=qm_gcs(b[qp],"border-left-width","borderLeftWidth");ay-=qm_gcs(b[qp],"border-top-width","borderTopWidth");}if(!c.ismove){c.style.left=(ax+aw)+"px";c.style.top=(ay+ah)+"px";}x2("qmactive",o,1);if(window.qmad&&qmad.bvis)eval(qmad.bvis);c.style.visibility="inherit";qm_li=c;}else  if(!qm_a(b[qp]))qm_li=b[qp];else qm_li=null;qm_kille(e);};function qm_gcs(obj,sname,jname){var v;if(document.defaultView&&document.defaultView.getComputedStyle)v=document.defaultView.getComputedStyle(obj,null).getPropertyValue(sname);else  if(obj.currentStyle)v=obj.currentStyle[jname];if(v&&!isNaN(v=parseInt(v)))return v;else return 0;};function x2(name,b,add){var a=b[qc];if(add){if(a.indexOf(name)==-1)b[qc]+=(a?' ':'')+name;}else {b[qc]=a.replace(" "+name,"");b[qc]=b[qc].replace(name,"");}};function qm_kille(e){if(!e)e=event;e.cancelBubble=true;if(e.stopPropagation&&!(qm_s&&e.type=="click"))e.stopPropagation();};function qm_pure(sd){if(sd.tagName=="UL"){var nd=document.createElement("DIV");nd.qmpure=1;var c;if(c=sd.style.cssText)nd.style.cssText=c;qm_convert(sd,nd);var csp=document.createElement("SPAN");csp.className="qmclear";csp.innerHTML="&nbsp;";nd.appendChild(csp);sd=sd[qp].replaceChild(nd,sd);sd=nd;}return sd;};function qm_convert(a,bm,l){if(!l)bm[qc]=a[qc];bm.id=a.id;var ch=a.childNodes;for(var i=0;i<ch.length;i++){if(ch[i].tagName=="LI"){var sh=ch[i].childNodes;for(var j=0;j<sh.length;j++){if(sh[j]&&(sh[j].tagName=="A"||sh[j].tagName=="SPAN"))bm.appendChild(ch[i].removeChild(sh[j]));if(sh[j]&&sh[j].tagName=="UL"){var na=document.createElement("DIV");var c;if(c=sh[j].style.cssText)na.style.cssText=c;if(c=sh[j].className)na.className=c;na=bm.appendChild(na);new qm_convert(sh[j],na,1)}}}}}/* ]]> */</script>

        <!-- Add-On Core Code (Remove when not using any add-on's) -->
        <style type="text/css">.qmfv{visibility:visible !important;}.qmfh{visibility:hidden !important;}</style><script type="text/JavaScript">var qmad = new Object();qmad.bvis="";qmad.bhide="";</script>


	        <!-- Add-On Settings -->
	        <script type="text/JavaScript">

		        /*******  Menu 0 Add-On Settings *******/
		        var a = qmad.qm0 = new Object();

		        // Item Bullets (CSS - Imageless) Add On
		        a.ibcss_apply_to = "parent";
		        a.ibcss_main_type = "arrow-head";
		        a.ibcss_main_direction = "right";
		        a.ibcss_main_size = 5;
		        a.ibcss_main_bg_color = "#B5B897";
		        a.ibcss_main_bg_color_active = "#E5E7DB";
		        a.ibcss_main_border_color = "#3e3f2b";
		        a.ibcss_main_border_color_active = "#000000";
		        a.ibcss_main_position_x = -16;
		        a.ibcss_main_position_y = -2;
		        a.ibcss_main_align_x = "right";
		        a.ibcss_main_align_y = "middle";
		        a.ibcss_sub_type = "arrow-head";
		        a.ibcss_sub_direction = "right";
		        a.ibcss_sub_size = 5;
		        a.ibcss_sub_bg_color = "#B5B897";
		        a.ibcss_sub_bg_color_active = "#E5E7DB";
		        a.ibcss_sub_border_color = "#3e3f2b";
		        a.ibcss_sub_border_color_active = "#000000";
		        a.ibcss_sub_position_x = -16;
		        a.ibcss_sub_align_x = "right";
		        a.ibcss_sub_align_y = "middle";

		        // Drop Shadow Add On
		        a.shadow_offset = 4;
		        a.shadow_color = "#3E3F2B";
		        a.shadow_opacity = 0.5;

	        </script>

        <!-- Add-On Code: Drop Shadow -->
        <script type="text/javascript">/* <![CDATA[ */qmad.shadow=new Object();if(qmad.bvis.indexOf("qm_drop_shadow(b.cdiv);")==-1)qmad.bvis+="qm_drop_shadow(b.cdiv);";if(qmad.bhide.indexOf("qm_drop_shadow(a,1);")==-1)qmad.bhide+="qm_drop_shadow(a,1);";;function qm_drop_shadow(a,hide,force){var z;if(!hide&&((z=window.qmv)&&(z=z.addons)&&(z=z.drop_shadow)&&!z["on"+qm_index(a)]))return;if((!hide&&!a.hasshadow)||force){var ss;if(!a.settingsid){var v=a;while((v=v.parentNode)){if(v.className.indexOf("qmmc")+1){a.settingsid=v.id;break;}}}ss=qmad[a.settingsid];if(!ss)return;if(isNaN(ss.shadow_offset))return;qmad.shadow.offset=ss.shadow_offset;var f=document.createElement("SPAN");x2("qmshadow",f,1);var fs=f.style;fs.position="absolute";fs.display="block";fs.backgroundColor="#999999";fs.visibility="inherit";var sh;if((sh=ss.shadow_opacity)){f.style.opacity=sh;f.style.filter="alpha(opacity="+(sh*100)+")";}if((sh=ss.shadow_color))f.style.backgroundColor=sh;f=a.parentNode.appendChild(f);a.hasshadow=f;}var c=qmad.shadow.offset;var b=a.hasshadow;if(b){if(hide)b.style.visibility="hidden";else {b.style.width=a.offsetWidth+"px";b.style.height=a.offsetHeight+"px";var ft=0;var fl=0;if(qm_o){ft=b[qp].clientTop;fl=b[qp].clientLeft;}if(qm_s2){ft=qm_gcs(b[qp],"border-top-width","borderTopWidth");fl=qm_gcs(b[qp],"border-left-width","borderLeftWidth");}b.style.top=a.offsetTop+c-ft+"px";b.style.left=a.offsetLeft+c-fl+"px";b.style.visibility="inherit";}}}/* ]]> */</script>

        <!-- Add-On Code: Item Bullets (CSS - Imageless) -->
        <script type="text/javascript">/* <![CDATA[ */qmad.br_navigator=navigator.userAgent.indexOf("Netscape")+1;qmad.br_version=parseFloat(navigator.vendorSub);qmad.br_oldnav6=qmad.br_navigator&&qmad.br_version<7;qmad.br_strict=(dcm=document.compatMode)&&dcm=="CSS1Compat";qmad.br_ie=window.showHelp;qmad.str=(qmad.br_ie&&!qmad.br_strict);if(!qmad.br_oldnav6){if(!qmad.ibcss)qmad.ibcss=new Object();if(qmad.bvis.indexOf("qm_ibcss_active(o,false);")==-1){qmad.bvis+="qm_ibcss_active(o,false);";qmad.bhide+="qm_ibcss_active(a,1);";if(window.attachEvent)window.attachEvent("onload",qm_ibcss_init);else  if(window.addEventListener)window.addEventListener("load",qm_ibcss_init,1);if(window.attachEvent)document.attachEvent("onmouseover",qm_ibcss_hover_off);else  if(window.addEventListener)document.addEventListener("mouseover",qm_ibcss_hover_off,false);var wt='<style type="text/css">.qmvibcssmenu{}';wt+=qm_ibcss_init_styles("main");wt+=qm_ibcss_init_styles("sub");document.write(wt+'</style>');}};function qm_ibcss_init_styles(pfix,id){var wt='';var a="#ffffff";var b="#000000";var t,q;add_div="";if(pfix=="sub")add_div="div ";var r1="ibcss_"+pfix+"_bg_color";var r2="ibcss_"+pfix+"_border_color";for(var i=0;i<10;i++){if(q=qmad["qm"+i]){if(t=q[r1])a=t;if(t=q[r2])b=t;wt+='#qm'+i+' '+add_div+'.qm-ibcss-static span{background-color:'+a+';border-color:'+b+';}';if(t=q[r1+"_hover"])a=t;if(t=q[r2+"_hover"])b=t;wt+='#qm'+i+'  '+add_div+'.qm-ibcss-hover span{background-color:'+a+';border-color:'+b+';}';if(t=q[r1+"_active"])a=t;if(t=q[r2+"_active"])b=t;wt+='#qm'+i+'  '+add_div+'.qm-ibcss-active span{background-color:'+a+';border-color:'+b+';}';}}return wt;};function qm_ibcss_init(e,spec){var z;if((z=window.qmv)&&(z=z.addons)&&(z=z.ibcss)&&(!z["on"+qmv.id]&&z["on"+qmv.id]!=undefined&&z["on"+qmv.id]!=null))return;qm_ts=1;var q=qmad.ibcss;var a,b,r,sx,sy;z=window.qmv;for(i=0;i<10;i++){if(!(a=document.getElementById("qm"+i))||(!isNaN(spec)&&spec!=i))continue;var ss=qmad[a.id];if(ss&&(ss.ibcss_main_type||ss.ibcss_sub_type)){q.mtype=ss.ibcss_main_type;q.msize=ss.ibcss_main_size;if(!q.msize)q.msize=5;q.md=ss.ibcss_main_direction;if(!q.md)md="right";q.mbg=ss.ibcss_main_bg_color;q.mborder=ss.ibcss_main_border_color;sx=ss.ibcss_main_position_x;sy=ss.ibcss_main_position_y;if(!sx)sx=0;if(!sy)sy=0;q.mpos=eval("new Array('"+sx+"','"+sy+"')");q.malign=eval("new Array('"+ss.ibcss_main_align_x+"','"+ss.ibcss_main_align_y+"')");r=q.malign;if(!r[0])r[0]="right";if(!r[1])r[1]="center";q.stype=ss.ibcss_sub_type;q.ssize=ss.ibcss_sub_size;if(!q.ssize)q.ssize=5;q.sd=ss.ibcss_sub_direction;if(!q.sd)sd="right";q.sbg=ss.ibcss_sub_bg_color;q.sborder=ss.ibcss_sub_border_color;sx=ss.ibcss_sub_position_x;sy=ss.ibcss_sub_position_y;if(!sx)sx=0;if(!sy)sy=0;q.spos=eval("new Array('"+sx+"','"+sy+"')");q.salign=eval("new Array('"+ss.ibcss_sub_align_x+"','"+ss.ibcss_sub_align_y+"')");r=q.salign;if(!r[0])r[0]="right";if(!r[1])r[1]="middle";q.type=ss.ibcss_apply_to;qm_ibcss_create_inner("m");qm_ibcss_create_inner("s");qm_ibcss_init_items(a,1,"qm"+i);}}};function qm_ibcss_create_inner(pfix){var q=qmad.ibcss;var wt="";var s=q[pfix+"size"];var type=q[pfix+"type"];var head;if(type.indexOf("head")+1)head=true;var gap;if(type.indexOf("gap")+1)gap=true;var v;if(type.indexOf("-v")+1)v=true;if(type.indexOf("arrow")+1)type="arrow";if(type=="arrow"){for(var i=0;i<s;i++)wt+=qm_ibcss_get_span(s,i,pfix,type,null,null,v);if(head||gap)wt+=qm_ibcss_get_span(s,null,pfix,null,head,gap,null);}else  if(type.indexOf("square")+1){var inner;if(type.indexOf("-inner")+1)inner=true;var raised;if(type.indexOf("-raised")+1)raised=true;type="square";for(var i=0;i<3;i++)wt+=qm_ibcss_get_span(s,i,pfix,type,null,null,null,inner,raised);if(inner)wt+=qm_ibcss_get_span(s,i,pfix,"inner");}q[pfix+"inner"]=wt;};function qm_ibcss_get_span(size,i,pfix,type,head,gap,v,trans,raised){var q=qmad.ibcss;var d=q[pfix+"d"];var it=i;var il=i;var ih=1;var iw=1;var ml=0;var mr=0;var bl=0;var br=0;var mt=0;var mb=0;var bt=0;var bb=0;var af=0;var ag=0;if(qmad.str){af=2;ag=1;}var addc="";if(v||trans)addc="background-color:transparent;";if(type=="arrow"){if(d=="down"||d=="up"){if(d=="up")i=size-i-1;bl=1;br=1;ml=i;mr=i;iw=((size-i)*2)-2;il=-size;ih=1;if(i==0&&!v){bl=iw+2;br=0;ml=0;mr=0;iw=0;if(qmad.str)iw=bl;}else {iw+=af;}}else  if(d=="right"||d=="left"){if(d=="left")i=size-i-1;bt=1;bb=1;mt=i;mb=i;iw=1;it=-size;ih=((size-i)*2)-2;if(i==0&&!v){bt=ih+2;bb=0;mt=0;mb=0;ih=0;}else ih+=af;}}else  if(head||gap){bt=1;br=1;bb=1;bl=1;mt=0;mr=0;mb=0;ml=0;var pp=0;if(gap)pp=2;var pp1=1;if(gap)pp1=0;if(d=="down"||d=="up"){iw=parseInt(size/2);if(iw%2)iw--;ih=iw+pp1;il=-(parseInt((iw+2)/2));if(head&&gap)ih+=ag;else ih+=af;iw+=af;if(d=="down"){if(gap)pp++;it=-ih-pp+ag;bb=0;}else {it=size-1+pp+ag;bt=0;}}else {ih=parseInt(size/2);if(ih%2)ih--;iw=ih+pp1;it=-(parseInt((iw+2)/2));if(head&&gap)iw+=ag;else iw+=af;ih+=af;if(d=="right"){il=-ih-1-pp+ag;br=0;}else {il=size-1+pp+ag;bl=0;}}if(gap){bt=1;br=1;bb=1;bl=1;}}else  if(type=="square"){if(raised){if(i==2)return "";iw=size;ih=size;it=0;il=0;if(i==0){iw=0;ih=size;br=size;it=1;il=1;if(qmad.str)iw=br;}}else {if(size%2)size++;it=1;ih=size;iw=size;bl=1;br=1;il=0;iw+=af;if(i==0||i==2){ml=1;it=0;ih=1;bl=size;br=0;iw=0;if(qmad.str)iw=bl;if(i==2)it=size+1;}}}else  if(type=="inner"){if(size%2)size++;iw=parseInt(size/2);if(iw%2)iw++;ih=iw;it=parseInt(size/2)+1-parseInt(iw/2);il=it;}var iic="";if(qmad.str)iic="&nbsp;";return '<span style="'+addc+'border-width:'+bt+'px '+br+'px '+bb+'px '+bl+'px;border-style:solid;display:block;position:absolute;overflow:hidden;font-size:1px;line-height:0px;height:'+ih+'px;margin:'+mt+'px '+mr+'px '+mb+'px '+ml+'px;width:'+iw+'px;top:'+it+'px;left:'+il+'px;">'+iic+'</span>';};function qm_ibcss_init_items(a,main){var q=qmad.ibcss;var aa,pf;aa=a.childNodes;for(var j=0;j<aa.length;j++){if(aa[j].tagName=="A"){if(window.attachEvent)aa[j].attachEvent("onmouseover",qm_ibcss_hover);else  if(window.addEventListener)aa[j].addEventListener("mouseover",qm_ibcss_hover,false);var skip=false;if(q.type!="all"){if(q.type=="parent"&&!aa[j].cdiv)skip=true;if(q.type=="non-parent"&&aa[j].cdiv)skip=true;}if(!skip){if(main)pf="m";else pf="s";var ss=document.createElement("SPAN");ss.className="qm-ibcss-static";var s1=ss.style;s1.display="block";s1.position="relative";s1.fontSize="1px";s1.lineHeight="0px";s1.zIndex=1;ss.ibhalign=q[pf+"align"][0];ss.ibvalign=q[pf+"align"][1];ss.ibposx=q[pf+"pos"][0];ss.ibposy=q[pf+"pos"][1];ss.ibsize=q[pf+"size"];qm_ibcss_position(aa[j],ss);ss.innerHTML=q[pf+"inner"];aa[j].qmibulletcss=aa[j].insertBefore(ss,aa[j].firstChild);ss.setAttribute("qmvbefore",1);ss.setAttribute("isibulletcss",1);if(aa[j].className.indexOf("qmactive")+1)qm_ibcss_active(aa[j]);}if(aa[j].cdiv)new qm_ibcss_init_items(aa[j].cdiv,null);}}};function qm_ibcss_position(a,b){if(b.ibhalign=="right")b.style.left=(a.offsetWidth+parseInt(b.ibposx)-b.ibsize)+"px";else  if(b.ibhalign=="center")b.style.left=(parseInt(a.offsetWidth/2)-parseInt(b.ibsize/2)+parseInt(b.ibposx))+"px";else b.style.left=b.ibposx+"px";if(b.ibvalign=="bottom")b.style.top=(a.offsetHeight+parseInt(b.ibposy)-b.ibsize)+"px";else  if(b.ibvalign=="middle")b.style.top=parseInt((a.offsetHeight/2)-parseInt(b.ibsize/2)+parseInt(b.ibposy))+"px";else b.style.top=b.ibposy+"px";};function qm_ibcss_hover(e,targ){e=e||window.event;if(!targ){var targ=e.srcElement||e.target;while(targ.tagName!="A")targ=targ[qp];}var ch=qmad.ibcss.lasth;if(ch&&ch!=targ&&ch.qmibulletcss)qm_ibcss_hover_off(new Object(),ch);if(targ.className.indexOf("qmactive")+1)return;var wo=targ.qmibulletcss;if(wo){x2("qm-ibcss-hover",wo,1);qmad.ibcss.lasth=targ;}if(e)qm_kille(e);};function qm_ibcss_hover_off(e,o){if(!o)o=qmad.ibcss.lasth;if(o&&o.qmibulletcss)x2("qm-ibcss-hover",o.qmibulletcss);};function qm_ibcss_active(a,hide){if(!hide&&a.className.indexOf("qmactive")==-1)return;if(hide&&a.idiv){var o=a.idiv;if(o&&o.qmibulletcss){x2("qm-ibcss-active",o.qmibulletcss);}}else {if(!a.cdiv.offsetWidth)a.cdiv.style.visibility="inherit";qm_ibcss_wait_relative(a);var wo=a.qmibulletcss;if(wo)x2("qm-ibcss-active",wo,1);}};function qm_ibcss_wait_relative(a){if(!a)a=qmad.ibcss.cura;if(a.cdiv){if(a.cdiv.qmtree&&a.cdiv.style.position!="relative"){qmad.ibcss.cura=a;setTimeout("qm_ibcss_wait_relative()",10);return;}var aa=a.cdiv.childNodes;for(var i=0;i<aa.length;i++){if(aa[i].tagName=="A"&&aa[i].qmibulletcss)qm_ibcss_position(aa[i],aa[i].qmibulletcss);}}}/* ]]> */</script>

        <script type="text/javascript">
            function AbreLink(url)
            {
                document.getElementById('FrameMain').src = url;
            }
        </script>

    </head>

	<body>
	    <form id="form1" runat="server">
		    <div id="container">
			    <div id="header">
				    <h1></h1>
				    <!--
				    <div id="flash_suspenso">
					    <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="1003" HEIGHT="150" id="plane" ALIGN="">
					       <PARAM NAME=movie VALUE="fla/logo_main.swf">
					       <PARAM NAME=quality VALUE=high>
					       <PARAM NAME=scale VALUE=exactfit>
					       <PARAM NAME=wmode VALUE=transparent>
					       <EMBED src="fla/logo_main.swf" quality=high scale=exactfit wmode=transparent WIDTH="1003" HEIGHT="150" NAME="plane" ALIGN="" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
					       </EMBED>
					    </OBJECT>
				    </div>
				    -->

			    </div>
			    <hr />
			    <div id="content">
				    <%--<div id="menu">
					    <ul class="itens">
						    <li><a id="selecionado" href="../index.html" title="">home</a></li>
						    <li><a id="naoSelecionado" href="#" title="">a empresa</a></li>
						    <li><a id="A1" href="#" title="">portfolio</a></li>

						    <li><a id="A2" href="#" title="">blog</a></li>
						    <li><a id="A3" href="#" title="">clientes</a></li>
						    <li><a id="A4" href="#" title="">contato</a></li>
					    </ul>
				    </div>
				    <br />--%>
				    <div id="menu-esq">

					    <div id="menu-destaques">
						    <h2 class="replace"><span></span></h2>
                                <!-- MyCSSMenu Structure [Menu 0] -->

                                <ul id="qm0" class="qmmc">

                                <li><a class="qmparent" href="javascript:void(0)">Usuários</a>

                                <ul>
                                <li><a onclick="javascript:AbreLink('NovoUsuario.aspx')">Novo (NovoUsuario)</a></li>
                                <li><a onclick="javascript:AbreLink('AltUsuario.aspx')">Alterar/Excluir (AltUsuario)</a></li>
                                </ul></li>

                                <li><a class="qmparent" href="javascript:void(0)">Who We Are</a>

                                <ul>
                                <li><a href="javascript:void(0)">Management</a></li>
                                <li><a class="qmparent" href="javascript:void(0)">Global Sites</a>

                                <ul>
                                <li><a href="javascript:void(0)">Asia</a></li>
                                <li><a href="javascript:void(0)">South America</a></li>
                                <li><a href="javascript:void(0)">Australia</a></li>
                                <li><a href="javascript:void(0)">North America</a></li>
                                <li><a href="javascript:void(0)">Europe</a></li>
                                <li><a href="javascript:void(0)">Africa</a></li>
                                </ul></li>

                                <li><a class="qmparent" href="javascript:void(0)">Investors</a>

                                <ul>
                                <li><a href="javascript:void(0)">Asia</a></li>
                                <li><a href="javascript:void(0)">South America</a></li>
                                <li><a href="javascript:void(0)">Australia</a></li>
                                <li><a href="javascript:void(0)">North America</a></li>
                                <li><a href="javascript:void(0)">Europe</a></li>
                                <li><a href="javascript:void(0)">Africa</a></li>
                                </ul></li>

                                <li><a href="javascript:void(0)">Worldwide</a></li>
                                <li><a href="javascript:void(0)">Product Overview</a></li>
                                <li><a href="javascript:void(0)">Publicity</a></li>
                                </ul></li>

                                <li><a class="qmparent" href="javascript:void(0)">Our Investors</a>

                                <ul>
                                <li><a href="javascript:void(0)">Annual Meetings</a></li>
                                <li><a href="javascript:void(0)">Financial Reports</a></li>
                                <li><a href="javascript:void(0)">Nasdaq Quoting</a></li>
                                <li><a href="javascript:void(0)">Dividend Information</a></li>
                                <li><a href="javascript:void(0)">Future Outlook</a></li>
                                <li><a href="javascript:void(0)">CEO Announcements</a></li>
                                </ul></li>

                                <li><a class="qmparent" href="javascript:void(0)">Our Commitment</a>

                                <ul>
                                <li><a href="javascript:void(0)">Satisfaction</a></li>
                                <li><a href="javascript:void(0)">Our Goals</a></li>
                                <li><a href="javascript:void(0)">Product Warranty</a></li>
                                <li><a href="javascript:void(0)">Future Outlook</a></li>
                                <li><a href="javascript:void(0)">Product Quality</a></li>
                                <li><a href="javascript:void(0)">Continued Support</a></li>
                                </ul></li>

                                <li><a href="javascript:void(0);">Locations</a></li>
                                <li><a href="javascript:void(0);">World Wide</a></li>
                                <li class="qmclear">&nbsp;</li></ul>
                                <!-- Create Menu Settings: (Menu ID, Is Vertical, Show Timer, Hide Timer, On Click ('all' or 'lev2'), Right to Left, Horizontal Subs, Flush Left, Flush Top) -->
                                <script type="text/javascript">qm_create(0,true,250,250,false,false,false,false,false);</script>
					    </div>
				    </div>
				    <div id="main2">
					    <!--<div id="logo-pequeno"></div>-->
					    <div id="texto2">
					        <iframe id="FrameMain" frameborder="0" src="AltUsuario.aspx"></iframe>
					    </div>
					    <!--
					        <h2 id="mande-seu-texto" class="replace"><a href="cadastro.php" alt="Mande seu texto!"><span>&nbsp;</span></a></h2>
					        <div id="galera">
						    <img src="css/img/galera-do-toboga.png" />
						    </div>-->
				    </div>
			    </div>

		    </div>
            <div id="footer">&copy; Todos os direitos reservados</div>
        </form>
	</body>
</html>
