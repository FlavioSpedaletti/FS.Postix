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
using Conexao;

public partial class NovoUsuario : System.Web.UI.Page
{
    MySql MySql = new MySql(FuncoesGerais.CONNECTIONSTRING);
    protected void btnOk_Click(object sender, EventArgs e)
    {
        try
        {
            string login = txtLogin.Text.ToUpper().Trim();
            string nome = txtNome.Text.ToUpper().Trim();
            string sobrenome = txtSobrenome.Text.ToUpper().Trim();
            string senha = FuncoesGerais.RetornaSHA512Base64(txtSenha.Text.ToUpper().Trim());

            if (MySql.ExecuteNonQuery("INSERT INTO UsuariosAdmin ( login, nome, sobrenome, senha ) VALUES ('" + login + "','" + nome + "','" + sobrenome + "','" + senha + "') ") != 1)
            {
                throw new Exception("Erro ao inserir.");
            }
            lblMsg.Visible = false;
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
        finally
        {
            LimpaCampos();
        }
    }

    protected void LimpaCampos()
    {
        txtLogin.Text = "";
        txtNome.Text = "";
        txtSobrenome.Text = "";
        txtSenha.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
}
