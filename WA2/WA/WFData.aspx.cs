using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WA
{
    public partial class WFData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        { 
            //acessa a configuração do sistema e joga ela na variavel que representa as configurações do sistema    
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;

            //acessa o concetionstring do rootWebconfig e coloca em coonString
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //cria um sql connection
            SqlConnection conexao = new SqlConnection();
            //passa para a propriedade ConnectionString de conexao o conectionstring denttro da variavel coonString
            conexao.ConnectionString = connString.ToString();

            //cria uma instancia de um comando sql 
            SqlCommand comandoSql = new SqlCommand();
            //passa a conexão para esse comando
            comandoSql.Connection = conexao;
            //especifica o comando
            comandoSql.CommandText = "Insert into contato (nome,email) values (@nome,@email) ";
           //passa os parametros para os @nome e @ email do comandoSql sql
            comandoSql.Parameters.AddWithValue("nome",TxTNome.Text);
            comandoSql.Parameters.AddWithValue("email", TxTEmail.Text);
            //Abre a conexao
            conexao.Open();
            //executa o comando
            comandoSql.ExecuteNonQuery();
            //fecha a conexão
            conexao.Close();
            //Atualiza o component
            DataList1.DataBind();

            
        }
    }
}