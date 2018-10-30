<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltUsuario.aspx.cs" Inherits="CadUsuarios" %>

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
    
    <script language="javascript">
            function ConfirmDelete()
            {
                if(confirm('Deseja excluir o usuário?'))
                {
                    event.returnValue=true;
                }
                else
                {
                    event.returnValue=false;
                }                
            }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="header">Alteração de usuário</div>
        <br />
        <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="Login" ForeColor="#333333" GridLines="None" OnRowEditing="gvUsuarios_RowEditing"
            Width="100%" Font-Names="Verdana" OnRowCancelingEdit="gvUsuarios_RowCancelingEdit" OnRowUpdating="gvUsuarios_RowUpdating" Font-Size="X-Small" >
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Login" DataField="Login" ReadOnly="true">
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Nome">
                    <EditItemTemplate>
                        <asp:TextBox Width="100" Font-Names="Verdana" Font-Size="X-Small" MaxLength="255" ID="txtNome" runat="server" Text='<%# Bind("Nome") %>'></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            Display="Dynamic" ErrorMessage="Please enter description" Font-Bold="True"></asp:RequiredFieldValidator>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server" Text='<%# Eval("Nome") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sobrenome">
                    <EditItemTemplate>
                        <asp:TextBox Width="100" Font-Names="Verdana" Font-Size="X-Small" MaxLength="255" ID="txtSobrenome" runat="server" Text='<%# Bind("Sobrenome") %>'></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            Display="Dynamic" ErrorMessage="Please enter description" Font-Bold="True"></asp:RequiredFieldValidator>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblSobrenome" runat="server" Text='<%# Eval("Sobrenome") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Senha">
                    <EditItemTemplate>
                        <asp:TextBox Width="100" Font-Names="Verdana" Font-Size="X-Small" MaxLength="255" TextMode="Password" ID="txtSenha" runat="server" Text='<%# Bind("Senha") %>'></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            Display="Dynamic" ErrorMessage="Please enter description" Font-Bold="True"></asp:RequiredFieldValidator>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblSenha" runat="server" Text="****************"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandArgument='<%# Bind("Login") %>'
                            CommandName="DeleteUser" OnClick="btnDelete_Click" OnClientClick="return ConfirmDelete();"
                            Text="Delete" />
                    </ItemTemplate>
                    <ControlStyle CssClass="btn" />
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" UpdateText="Alterar" >
                    <ControlStyle CssClass="btn" />
                </asp:CommandField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#888888" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#BBBBBB" />
        </asp:GridView>
        <asp:Label ID="lblMsg" runat="server" ForeColor="red" Font-Bold="true" Visible="false" />
    </div>
    </form>
</body>
</html>
