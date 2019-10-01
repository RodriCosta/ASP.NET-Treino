<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OlaMundo.aspx.cs" Inherits="ASPM1_OlaMundo.OlaMundo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ola Mundo!!! - Aula 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TxtMsg" runat="server" Width="817px"></asp:TextBox>
        <asp:Button ID="BtnExe" runat="server" OnClick="BtnExe_Click" Text="Executar!" />
        <p>
            <asp:Label ID="Lab" runat="server" Text="Como deseja informar a caixa de texto"></asp:Label>
        </p>
    </form>
</body>
</html>
