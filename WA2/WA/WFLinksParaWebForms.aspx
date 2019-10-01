<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFLinksParaWebForms.aspx.cs" Inherits="WA.WFLinksParaWebForms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">

        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/WFParOuImparFatorial.aspx" runat="server">Par ou Impar</asp:HyperLink>

        <asp:ImageButton ID="ImageButton1" runat="server" Height="136px" ImageUrl="~/Imagens/download.jpg" PostBackUrl="~/WFParOuImparFatorial.aspx" Width="103px" />

    </div>
    <div id="div2">

        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/WFParOuImparFatorial.aspx" runat="server">Fatorial</asp:HyperLink>

        <asp:ImageButton ID="ImageButton2" runat="server" Height="120px" ImageUrl="~/Imagens/18.jpg" PostBackUrl="~/WFParOuImparFatorial.aspx" Width="106px" />

    </div>
    </form>
    </body>
</html>
