using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTriangulo
{
    public partial class Triangulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Boolean VerificaTriangulo(int a, int b, int c)
        {
            Boolean retorno = false;
            if ((a < b + c) && (b < a + c) && (b < a + b))
            {
                retorno = true;
            }
            return retorno;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   //pega os valores dos campos lados.
            int LA = Convert.ToInt32(txtLadoA.Text);
            int LB = Convert.ToInt32(txtLadoB.Text);
            int LC = Convert.ToInt32(txtLadoC.Text);

            //chama a função booleana
            Boolean verifica = VerificaTriangulo(LA, LB, LC);

            if(verifica == true)
            {
                lbResposta.Text = "Os valores informados formam os lados de um triângulo!";
            }
            else
            {
                lbResposta.Text = "Os valores informados não formam os lados de um triângulo!";
            }
        }
    }
}