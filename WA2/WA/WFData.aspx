<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFData.aspx.cs" Inherits="WA.WFData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <br />
            <asp:TextBox ID="TxTNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="TxTEmail" runat="server"></asp:TextBox>
            <asp:Button ID="BtnEnviar" runat="server" OnClick="BtnEnviar_Click" Text="Cadastrar" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Fuchsia" Text="Lista de Contatos"></asp:Label>
&nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <ItemStyle ForeColor="#000066" />
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome:
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Email] FROM [Contato]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
