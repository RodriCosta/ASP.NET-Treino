<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFCursos.aspx.cs" Inherits="WA.WFCursos" %>

<%@ Register src="WUCwebmenu.ascx" tagname="WUCwebmenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Target="_blank" />
            <uc1:WUCwebmenu ID="WUCwebmenu1" runat="server" />
            </br>
        </div>
        <div>
            
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2">
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Vgabond-"></asp:Label>
                    <asp:Literal ID="Literal1" runat="server" Text="&lt;h1&gt;Japanese&lt;/h1&gt;"></asp:Literal>
                    <br />
                    <asp:Label ID="lbl1" runat="server" Text="Vagabond (バガボンド, Bagabondo?) é uma série de mangá escrita e ilustrada por Takehiko Inoue, baseada no romance Musashi, de Eiji Yoshikawa, que conta a história do samurai Miyamoto Musashi (宮本武蔵? 1584–1645).[1]"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com.br/" Target="_blank">Google.</asp:HyperLink>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar !</asp:LinkButton>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="lbl3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Bee-"></asp:Label>
                    <br />
                    <asp:Label ID="lbl4" runat="server" Text="Abelhas são insetos voadores, conhecidos pelo seu importante papel na polinização. Pertencem à ordem Hymenoptera, da superfamília Apoidea, subgrupo Anthophila, e são aparentados das vespas e formigas. Wikipédia"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="https://br.yahoo.com/" runat="server">Yahoo.</asp:HyperLink>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Voltar !</asp:LinkButton>
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="opa" Height="100px" ImageUrl="~/Imagens/autocolantes-bee-hornet-cartoon-image.jpg.jpg" OnClick="ImageButton1_Click" Width="83px" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="106px" ImageUrl="~/Imagens/download.jpg" OnClick="ImageButton2_Click" Width="110px" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
