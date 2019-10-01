<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAagenda.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1px;
        }
    </style>
   <link href="LoginEstilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="centralizar">
            <div id="Conteudocentralizar">
            <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txtusu" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogar" runat="server" OnClick="btnLogar_Click" Text="Logar" />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
