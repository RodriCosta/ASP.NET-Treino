using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA
{
    public partial class WFJavacript : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //adiciona o onclick no botão com a função JS assim que o documento carrega o mesmo.
            //Button1.Attributes.Add("onClick", "myAlert()");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}