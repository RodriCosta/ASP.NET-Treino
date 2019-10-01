<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF.aspx.cs" Inherits="WA.WF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tabuada</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Tabuada</h1>
        <div>
            <asp:DropDownList ID="DropTab" runat="server">
            </asp:DropDownList>
            <asp:Button ID="BtnExibe" runat="server" OnClick="BtnExibe_Click" style="height: 26px" Text="Exibir a tabuada" />
        </div>
        <asp:ListBox ID="ListTab" runat="server" Height="261px" Visible="False"></asp:ListBox>
        <asp:Table ID="TabUm" runat="server" BackColor="#99CCFF" CellPadding="5" CellSpacing="5" Font-Bold="True" Font-Italic="False" Visible="False">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">0</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">1</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">2</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">3</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">4</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">5</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">6</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">7</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">8</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">9</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
                   <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">X</asp:TableCell>
                <asp:TableCell runat="server">10</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:PlaceHolder ID="PlaceUm" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
