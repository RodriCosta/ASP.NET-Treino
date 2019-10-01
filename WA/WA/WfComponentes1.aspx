<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfComponentes1.aspx.cs" Inherits="WA.WfComponentes1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Conhecendo os Componentes - Parte 1</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Site</td>
                    <td class="auto-style1">Endereço</td>
                    <td class="auto-style1">Opções</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TxtSite" runat="server" Width="113px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEnd" runat="server" Width="126px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnInserir" runat="server" Text="Inserir Site!" OnClick="BtnInserir_Click" />
                        <asp:Button ID="BtnEnd" runat="server" OnClick="BtnEnd_Click" Text="Selecionar!" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DPL" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:ListBox ID="endereco" runat="server"></asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
