<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFParOuImparFatorial.aspx.cs" Inherits="WA.WFParOuImparFatorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Fatorial</asp:ListItem>
            </asp:RadioButtonList>
            <asp:BulletedList ID="BullLista" runat="server" BulletStyle="LowerRoman" CssClass="auto-style1" OnClick="BullLista_Click" DisplayMode="LinkButton" Visible="False">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem Value="Calcula o Fatorial">Calcula o Fatorial</asp:ListItem>
            </asp:BulletedList>

        </div>
        <asp:Panel ID="PnParouImpar" runat="server" Visible="False">
            <asp:Label ID="Label1" runat="server" Text="Verifica se o numero informado é par ou impar"></asp:Label>
            <br />
            <asp:TextBox ID="txtValorpn1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Verifica" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="LResp1" runat="server"></asp:Label>

        </asp:Panel>
        <br />
         <asp:Panel ID="PnFatorial" runat="server" Visible="False">
                  <asp:Label ID="Label3" runat="server" Text="Calcula o fatorial do numero"></asp:Label>
            <br />
            <asp:TextBox ID="txtValorpn2" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Calcula" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="LResp2" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
