<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFValidator.aspx.cs" Inherits="WA.WFValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF" BorderStyle="Inset" Height="443px" Width="471px">
                <asp:Label ID="Label1" runat="server" Text="CPF"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Informe um CPF !"></asp:RequiredFieldValidator>
               
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Idade"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Idade fora o escopo" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Informe um E-mail Valido !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Informe uma senha !"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Confirmar Senha:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Os valores informados não são iguais"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="senha não informada !"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Enviar" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
