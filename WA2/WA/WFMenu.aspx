<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFmenu.aspx.cs" Inherits="WA.WFmenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px" DataSourceID="Web">
                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/WFCursos.aspx" Text="Cadastros" Value="Cadastros">
                        <asp:MenuItem ImageUrl="~/Imagens/download.jpg" Text="Cliente" Value="Cliente"></asp:MenuItem>
                        <asp:MenuItem Text="Fornecedores" Value="Fornecedores"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Consultas" Value="Consultas"></asp:MenuItem>
                    <asp:MenuItem Text="Relatorios" Value="Relatorios"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>
            <asp:SiteMapDataSource ID="Web" runat="server" />
        </div>
    </form>
</body>
</html>
