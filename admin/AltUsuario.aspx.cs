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

public partial class CadUsuarios : System.Web.UI.Page
{
    MySql MySql = new MySql(FuncoesGerais.CONNECTIONSTRING);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void gvUsuarios_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvUsuarios.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void gvUsuarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvUsuarios.EditIndex = -1;
        BindGrid();
    }

    protected void gvUsuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            string login = gvUsuarios.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = gvUsuarios.Rows[e.RowIndex];
            string nome = ((TextBox)row.Cells[1].FindControl("txtNome")).Text;
            string sobrenome = ((TextBox)row.Cells[1].FindControl("txtSobrenome")).Text;
            string senha = FuncoesGerais.RetornaSHA512Base64(((TextBox)row.Cells[3].FindControl("txtSenha")).Text);

            if (MySql.ExecuteNonQuery("UPDATE UsuariosAdmin SET NOME = '" + nome + "', SOBRENOME = '" + sobrenome + "', SENHA = '" + senha + "' WHERE LOGIN = '" + login + "' ") != 0)
            {
                gvUsuarios.EditIndex = -1;
                BindGrid();
                lblMsg.Visible = false;
            }
            else
            {
                throw new Exception("Erro ao atualizar.");
            }
        }
        catch(Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            string login = ((Button)sender).CommandArgument;

            if (MySql.ExecuteNonQuery("DELETE FROM UsuariosAdmin WHERE LOGIN = '" + login + "'") != 0)
            {
                gvUsuarios.EditIndex = -1;
                BindGrid();
                lblMsg.Visible = false;
            }
            else
            {
                throw new Exception("Erro ao excluir.");
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }

        BindGrid();
    }

    protected void BindGrid()
    {
        DataTable dt;
        dt = MySql.FillDataTable("SELECT * FROM UsuariosAdmin");
        if (dt.Rows.Count > 0)
        {
            gvUsuarios.DataSource = dt;
            gvUsuarios.DataBind();
        }
        else
        {
            gvUsuarios.DataSource = null;
            gvUsuarios.DataBind();
        }
    }
}
