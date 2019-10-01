using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPM1_OlaMundo
{
    public partial class OlaMundo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnExe_Click(object sender, EventArgs e)
        {
            if(TxtMsg.Text == "")
            {

                Lab.Text = "<h1>O text esta vazio!</h1>";

            }
            else
            {
                Lab.Text = "<h1>"+TxtMsg.Text+"</h1>"; 
            }
        }
    }
}