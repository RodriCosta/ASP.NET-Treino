using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WFDiasDeVida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  //Define no carregamento da pagina que o calenadrio um recebe a data de agora
            Calendar2.SelectedDate = DateTime.Now;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Cria variaveis para receber os dias meses e anos selecionados nos calendarios
            int diaN = 0, anoN = 0, mesN = 0;
            int diaA = 0, anoA = 0, mesA = 0;


            
            diaN = Calendar1.SelectedDate.Day;
            anoN = Calendar1.SelectedDate.Year*365;
            mesN = Calendar1.SelectedDate.Month*30;

            diaA = Calendar2.SelectedDate.Day;
            anoA = Calendar2.SelectedDate.Year*365;
            mesA = Calendar2.SelectedDate.Month*30;

            //Faz os caculos com as variaveis ja preenchidas. 
            int total = (diaA + mesA + anoA) - (diaN + mesN + anoN);
            lblResultado.Text = "Dias de vida " + total.ToString();
        }
    }
}