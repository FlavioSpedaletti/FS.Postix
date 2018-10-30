using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Odbc;

namespace Conexao
{
    /// <summary>
    /// Classe de conexão MySql
    /// </summary>
    public class MySql
    {
        public string ConStr;
	    public MySql(string Conn)
	    {
            this.ConStr = Conn;
	    }

        public DataTable FillDataTable(string SQL)
        {
            DataTable dt = new DataTable();
            if (ConStr.Trim() != "" && ConStr != null)
            {
                using (OdbcCommand cmd = new OdbcCommand(SQL, new OdbcConnection(ConStr)))
                {
                    cmd.Connection.Open();
                    OdbcDataAdapter oA = new OdbcDataAdapter(cmd);
                    oA.Fill(dt);
                    cmd.Connection.Close();
                    return dt;
                }
            }
            return null;
        }

        public int ExecuteNonQuery(string SQL)
        {
            int LinhasAfetadas=0;
            try
            {
                if (ConStr.Trim() != "" && ConStr != null)
                {
                    using (OdbcCommand cmd = new OdbcCommand(SQL, new OdbcConnection(ConStr)))
                    {
                        cmd.Connection.Open();
                        LinhasAfetadas = cmd.ExecuteNonQuery();
                        cmd.Connection.Close();
                    }
                }
            }
            catch (Exception e)
            {
                LinhasAfetadas = 0;
                throw new Exception(e.Message);
            }
            return LinhasAfetadas;
        }
    }
}