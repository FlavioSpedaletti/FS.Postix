using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for FuncoesGerais
/// </summary>
public static class FuncoesGerais
{
    public static string CONNECTIONSTRING = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=mysql01.postix.com.br;PORT=3306;DATABASE=postix;USER=postix;PASSWORD=ParangolW4;OPTION=3;";
    //public static string CONNECTIONSTRING = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=localhost;PORT=3306;DATABASE=test;USER=root;PASSWORD=root;OPTION=3;";

    public static string RetornaSHA512Base64(string Str)
    {
        string SHA512Base64;
        try
        {
            SHA512Managed Cod512 = new SHA512Managed();
            UTF8Encoding UTF8 = new UTF8Encoding();
            SHA512Base64 = Convert.ToBase64String(Cod512.ComputeHash(UTF8.GetBytes(Str)));
        }
        catch
        {
            SHA512Base64 = "Erro ao criptografar string";
        }
        return SHA512Base64;
    }
}
