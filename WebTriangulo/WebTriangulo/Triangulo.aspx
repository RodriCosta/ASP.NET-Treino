<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Triangulo.aspx.cs" Inherits="WebTriangulo.Triangulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Lado A"></asp:Label>
            <br />
            <asp:TextBox ID="txtLadoA" runat="server" Text="10"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Lado B"></asp:Label>
            <br />
            <asp:TextBox ID="txtLadoB" runat="server" Text="10"></asp:TextBox>
            <br />
            <asp:Label ID="Lado3" runat="server" Text="Lado C"></asp:Label>
            <br />
            <asp:TextBox ID="txtLadoC" runat="server" Text="10"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Verificar!" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="lbResposta" runat="server" Text=" "></asp:Label>
        </div>
    </form>
</body>
</html>
