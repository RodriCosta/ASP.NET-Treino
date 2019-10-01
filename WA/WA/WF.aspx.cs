using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Se for a primeira entrada na pagina que é o falso de um postback (ida e volta de quem ja esta na pagina), eleentra no if e carrega o
            //dropdown.
            if (!IsPostBack)
            {


           
            for (int i = 0; i < 11; i++)
            {
              
                DropTab.Items.Add(i.ToString());

            }

            }
        }

        protected void BtnExibe_Click(object sender, EventArgs e)
        {
            ListTab.Items.Clear();
            ListItem Li = DropTab.SelectedItem;
            int n = Convert.ToInt32(Li.Value);
            int t = 0;
            for (int i = 0; i < 11; i++)
            {
                t = i * n;
                ListTab.Items.Add(i.ToString()+"x"+n.ToString()+" = "+t.ToString());
            }
        }
    }
}