using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WfComponentes1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnInserir_Click(object sender, EventArgs e)
        {    //inserindo item no list atraves do textbox
            //DPL.Items.Add(TxtSite.Text);

            //inserindo valor no list com listitem
            ListItem item = new ListItem(TxtSite.Text,TxtEnd.Text);
            endereco.Items.Add(item);
            TxtSite.Text = "";
            TxtEnd.Text = "";
            //inserindo endereco com instancia do tipo list passando parametros na criação da instancia
            //item = new ListItem(TxtEnd.Text, endereco.Items.Count.ToString());
            //endereco.Items.Add(item);


        }

        protected void BtnEnd_Click(object sender, EventArgs e)
        {
            //passando os values e textos dos itens selicionados na lista e no dropdown para os campos .
            DPL.Items.Clear();
            ListItem Li;
            for (int i = 0; i < endereco.Items.Count; i++)
            {
                Li = endereco.Items[i];
                if (Li.Selected)
                {
                    Li.Selected = false;
                    DPL.Items.Add(Li);
              
                }
            }

            //ou 

            //foreach (ListItem item in endereco.Items)
            //{
            //    if (item.Selected)
            //    {
            //        item.Selected = false;
            //        DPL.Items.Add(item);
            //    }
            //}

           
        }
    }
}