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
        <asp:ListBox ID="ListTab" runat="server" Height="261px"></asp:ListBox>
    </form>
</body>
</html>
