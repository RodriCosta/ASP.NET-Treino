using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WFParOuImparFatorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PnParouImpar.Visible = false;
                PnFatorial.Visible = false;
            }
           
        }

        protected void BullLista_Click(object sender, BulletedListEventArgs e)
        {
            switch (e.Index)
            {
                case 0:
                    PnParouImpar.Visible = true;
                    break;
                case 1:
                    PnFatorial.Visible = true;
                    break;

                default:
                    break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Verifica se é par ou impar
            int n = Convert.ToInt32(txtValorpn1.Text);

            
            if (n%2 != 0)
            {
                string texto = "O numero é impar";
                LResp1.Text = texto;
            }
            else
            {
                string texto = "O numero é par";
                LResp1.Text = texto;
            }
            
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PnParouImpar.Visible = false;
            PnFatorial.Visible = false;
            if (RadioButtonList1.SelectedIndex == 0)
            {
                PnParouImpar.Visible = true;
            }
            else
            {
                PnFatorial.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int n = Convert.ToInt32(txtValorpn2.Text);
                if (n < 0)
                {
                    LResp2.Text = "Informe apenas numeros positivos!";
                }
                else if(n == 0)
                {
                    LResp2.Text = "0! = 1";
                }
                else
                {
                    int t = n;
                    for (int i = n-1; i > 0; i--)
                    {
                         t = t * i;
                       
                        
                    }
                    LResp2.Text = n.ToString()+" != "+t.ToString();
                }
            }
            catch
            {
                LResp2.Text = "Permitido apenas numeros positivos";
            }
        }
    }
}