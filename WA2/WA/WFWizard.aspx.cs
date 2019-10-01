using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WFWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            //passa o valor do textbox dentro do wizard achado com o nome do component
            var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("TextBox1")).Text;
            //passa o valor do component direto para a variavel
            var nomeFant = TextBox2.Text;
            //retira a visibilidade do wizard
            Wizard1.Visible = false;
            //injeta na tela um html com as concatenado com as variaveis
            Response.Write("<h1>Dados do Formulario Wizard</h1>");
            Response.Write("<h3>Nome " + nome+ "</h3>:");
            Response.Write("<h3>Nome " + nomeFant + "</h3>:");
        }
    }
}