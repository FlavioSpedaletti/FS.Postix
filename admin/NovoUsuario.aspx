<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NovoUsuario.aspx.cs" Inherits="NovoUsuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
    <link rel="stylesheet" type="text/css" media="screen" href="../css/styleCad.css" />
    
    <style>
        input.btn{
        color:#050;
        font-family:Verdana,sans-serif;
        font-size:9px;
        font-weight:bold;
        background-color:#DDDDDD;
        border:1px solid #AB0E15;
        padding:1px 1px 1px 1px; /* Firefox */
        color:#AB0E15; /*Fore Color*/
        cursor:pointer;
        <%--width:100px;--%>
        }

        input.btn:hover{
        background-color:#CCCCCC;
        /*border:1px solid #C6D880;
        color:#529214;*/
        }

        body {color:#00121e; text-decoration:bold; font:1em verdana, arial, sans-serif; text-align:center;}
        #tblNovo{font-size:10px; color:#00121e; margin:30px 0px 0px 30px;width:455px;}
        #header{clear:both; background:#999; width:650px; padding:1px; margin:0 auto;}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="header">Cadastro de usuário</div>
        <table id="tblNovo">
            <tr>
                <td style="text-align:right;"><asp:Label ID="lblLogin" Text="Login" runat="server" /></td>
                <td style="text-align:left;" colspan="3"><asp:TextBox ID="txtLogin" runat="server" MaxLength="255" /></td>
            </tr>
            <tr>
                <td style="text-align:right;"><asp:Label ID="lblNome" Text="Nome" runat="server" /></td>
                <td style="text-align:left;"><asp:TextBox ID="txtNome" runat="server" MaxLength="255" /></td>
                <td style="text-align:right;">&nbsp;<asp:Label ID="lblSobrenome" Text="Sobrenome" runat="server" /></td>
                <td style="text-align:left;"><asp:TextBox ID="txtSobrenome" runat="server" MaxLength="255" /></td>
            </tr>
            <tr>
                <td style="text-align:right;"><asp:Label ID="lblSenha" Text="Senha" runat="server" /></td>
                <td style="text-align:left;" colspan="3"><asp:TextBox ID="txtSenha" runat="server" MaxLength="255" Width="402" /></td>
            </tr>
            <tr><td colspan="4">&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:Button ID="btnOk" Text="      Ok      " runat="server" CssClass="btn" OnClick="btnOk_Click" /></td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblMsg" runat="server" ForeColor="red" Font-Bold="true" Visible="false" />
    </div>
    </form>
</body>
</html>
