using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WUpload
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            try
            {

                //pega o nome do arquivo de uplodado
                String nome = UploadArq.FileName;
                //pega o caminho do da pasta passada como parametro dentro da pasta raiza do site
                String caminho = Server.MapPath(@"upload\");
                //passa a variavel nome para a propriedade texto do textbox1
                TextBox1.Text = nome;
                //passa o tamanho do arquivo uplodado para a propriedade texto do textbox2
                TextBox2.Text = UploadArq.PostedFile.ContentLength.ToString();
                //salva p arquivo com o nome fornecido pela variavel nome mais o caminho fornecido pela variaavel caminho.
                UploadArq.PostedFile.SaveAs(caminho + nome);
            }
          
              catch (Exception)
            {

                //passa um erro pro usuario com base no erro da execução do codigo de try.
            }
        }

        protected void UpMutiArq_Click(object sender, EventArgs e)
        {
            try
            {

                //pega o nome do arquivo de uplodado
                String nome = "";
                //pega o caminho do da pasta passada como parametro dentro da pasta raiza do site
                String caminho = Server.MapPath(@"upload\");

                //for para passsar por todos os arquivos selecionados
                for (int i = 0; i < UploadArq.PostedFiles.Count; i++)
                {
                    //variavel nome recebe o valor do item da lista de arquivos da vez
                    nome = nome + UploadArq.PostedFiles[i].FileName + " - ";
                    //salva cada um dos arquivos por ver utilizando o caminho mais o nome emcabeçado em cada iteração
                    UploadArq.PostedFiles[i].SaveAs(caminho + UploadArq.PostedFiles[i].FileName);
                }
                //passa a variavel nome para a propriedade texto do textbox1
                TextBox1.Text = nome;
                
               
            }

            catch (Exception)
            {

                //passa um erro pro usuario com base no erro da execução do codigo de try.
            }
        }
    }
}