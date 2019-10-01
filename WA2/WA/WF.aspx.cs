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
            ////Listbox ListTab.Items.Clear();
            ListItem Li = DropTab.SelectedItem;
            int n = Convert.ToInt32(Li.Value);
            int t = 0;
            //for (int i = 0; i < 11; i++)
            //{
            //    t = i * n;
            //   //Listbox ListTab.Items.Add(i.ToString()+"x"+n.ToString()+" = "+t.ToString());
            //    TabUm.Rows[i].Cells[0].Text = n.ToString();
            //    TabUm.Rows[i].Cells[4].Text = t.ToString();
            //}
            

            //Cria um objeto table
            Table tabela = new Table();
            for (int i = 0; i < 11; i++)
            {   //caucula numa variavel o valor selecionado vezes a iteração do for.
                t = i * n;
                //cria um objeto row 
                TableRow linha = new TableRow();
                //faz um for dentro de row na primeira celula e constroi o texto dentro do for
                for (int j = 0; j < 1; j++)
                { 
                    //cria o objeto coluna
                    TableCell coluna = new TableCell();
                    coluna.Text = n.ToString() + " X " + i.ToString() + " = " + t.ToString();
                    //adiciona o objeto coluna ao objeto linha
                    linha.Cells.Add(coluna);

                }
                //adiciona o objeto linha ao objeto tabela
                tabela.Rows.Add(linha);

            }
            //adicona o objeto tabela ao component placeholder
            PlaceUm.Controls.Add(tabela);
        }
    }
}