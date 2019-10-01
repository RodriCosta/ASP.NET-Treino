using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WFGridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //Passa o para o index da pagina do detailsview o grid view pageindex (vezes) a quantidade de elementos desse pageindex mais o selectd index do item selecionado.
            DetailsView1.PageIndex = (GridView1.PageIndex * GridView1.PageSize) + GridView1.SelectedIndex;

            //mostra  detaillist se tiver item selecionado
            DetailsView1.Visible = true;
        }
    }
}