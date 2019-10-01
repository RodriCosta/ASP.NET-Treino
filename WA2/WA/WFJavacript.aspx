<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFJavacript.aspx.cs" Inherits="WA.WFJavacript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script>
        //Javascrip no ASP.NET
        function myAlert() {

            alert('ola mundo!');

        };
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="315px" ImageUrl="~/Imagens/18.jpg" Width="263px" />
                
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Javascript" OnClientClick="myAlert()" />
                
        </div>
    </form>
</body>
</html>
