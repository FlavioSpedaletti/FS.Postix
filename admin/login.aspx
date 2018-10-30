<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
        #main3 {background-image:url(imgs/bg-div-main3.png); float:left;height:600px;width:1003px;}
        #main h2, #main2 h2 {margin:-37px 0 0 585px;} 
        #main h2, #main h2 a, #main2 h2, #main2 h2 a {font-size:3em; font-weight:normal; height:156px; width:155px}
        #main h2 span, #main2 h2 span {background-image:url(img/bt-mande-seu-texto.png); height:156px; width:155px}
        /*
          #main h2 a{position:relative;  width:155px; height:156px; display:block;}
        #main h2 a span{position:absolute;top:0;left:0;width:100%;height:100%;background:url(img/bt-mande-seu-texto.png) top left no-repeat;cursor:pointer;}
          */
        #main #texto {font-size:14px; color:#00121e; margin:30px 0px 0px 30px;width:455px;}
        #main2 #texto2 {font-size:14px; color:#00121e; margin:30px 0px 0px 30px;width:690px;}
        #main #texto p {margin-bottom:20px}
        #main2 #texto2 p {margin-bottom:20px}
        #main3 {text-align:center;}
        #main #texto p strong {color:#b50900}
        #main2 #texto2 p strong {color:#b50900}
        #galera{margin-top:-26px;}
        #footer{clear:both; background:#999; text-align:left; width:993px; padding:5px; margin:0 auto}
        /***************************** APAGAR ATÉ AQUI DEPOIS QUE PULICAR O SITE *******************************/


        </style>
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
				    <div id="main3">
					    <!--<div id="logo-pequeno"></div>-->    
				        <table id="tblLogin">
                            <tr>
                                <td><asp:Label ID="lblUsuario" runat="server" Font-Bold="true" Text="Usuário:"/>&nbsp;</td>
                                <td><asp:TextBox ID="txtUsuario" Width="100" runat="server"/></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblSenha" runat="server" Font-Bold="true" Text="Senha:"/>&nbsp;</td>
                                <td><asp:TextBox ID="txtSenha" Width="100" runat="server" TextMode="Password"/></td>
                            </tr>
                            <tr>
                                <td colspan="2"><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                            </tr>
                            <tr>
                                <td colspan="2"><asp:Label ID="lblErro" runat="server" ForeColor="red" Font-Bold="true" Visible="false" /></td>
                            </tr>
                        </table>
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
