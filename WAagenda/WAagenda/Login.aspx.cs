using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAagenda
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            String Email = txtusu.Text;
            String Senha = txtSenha.Text;

            //Acessar o banco para verificar se o usuario existe
            //capturar a string de conexão
            System.Configuration.Configuration RootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings ConnString;
            ConnString = RootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConnString.ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from usuario where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", txtusu.Text);
            cmd.Parameters.AddWithValue("senha", txtSenha.Text);
            con.Open();

            SqlDataReader registro = cmd.ExecuteReader();

            if (registro.HasRows)
            {
                HttpCookie login = new HttpCookie("login",txtusu.Text);
                Response.Cookies.Add(login);

                //direcionar para a pagina princiapl
                Response.Write("<script>alert('Usuário Logado!');</script>");
                Response.Redirect("~/Index.aspx");
            }
            else
            {

                Response.Write("<script>alert('Usuário ou Senha inválido!');</script>");

            }
            con.Close();
            
        }
    }
}