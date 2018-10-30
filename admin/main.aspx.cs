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

public partial class main : System.Web.UI.Page
{
    MySql MySql = new MySql(FuncoesGerais.CONNECTIONSTRING);

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt;
        dt = MySql.FillDataTable("SELECT * FROM UsuariosAdmin");
        //gvMain.DataSource = dt;
        //gvMain.DataBind();
    }
}
