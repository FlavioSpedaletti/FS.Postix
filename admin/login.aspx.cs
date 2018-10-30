using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;
using Conexao;

public partial class login : System.Web.UI.Page
{
    MySql MySql = new MySql(FuncoesGerais.CONNECTIONSTRING);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt;
        string Senha_Crip;

        dt = MySql.FillDataTable("SELECT LOGIN, SENHA FROM UsuariosAdmin WHERE LOGIN = '" + txtUsuario.Text.ToUpper() + "'");
        if (dt.Rows.Count == 1)
        {
            Senha_Crip = FuncoesGerais.RetornaSHA512Base64(txtSenha.Text);
            if (Senha_Crip == dt.Rows[0]["SENHA"].ToString())
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUsuario.Text.ToUpper(), false);
            }
            else
            {
                lblErro.Visible = true;
                lblErro.Text = "Senha incorreta.";   
            }
        }
        else
        {
            lblErro.Visible = true;
            lblErro.Text = "Login incorreto.";   
        }
    }
}
