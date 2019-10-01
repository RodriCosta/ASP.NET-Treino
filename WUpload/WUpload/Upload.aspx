<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WUpload.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="UploadArq" runat="server" AllowMultiple="True" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="767px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Tamanho"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="754px"></asp:TextBox>
        <p>
            <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Upload" />
            <asp:Button ID="UpMutiArq" runat="server" OnClick="UpMutiArq_Click" Text="Mais de Um Arquivo" />
        </p>
    </form>
</body>
</html>
