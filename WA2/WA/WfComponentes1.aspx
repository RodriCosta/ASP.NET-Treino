<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfComponentes1.aspx.cs" Inherits="WA.WfComponentes1" %>

<%@ Register src="WUCwebmenu.ascx" tagname="WUCwebmenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Conhecendo os Componentes - Parte 1</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 318px;
        }
        .auto-style3 {
            width: 318px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <uc1:WUCwebmenu ID="WUCwebmenu1" runat="server" />

            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Site</td>
                    <td class="auto-style1">Endereço</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtSite" runat="server" Width="113px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEnd" runat="server" Width="126px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ListBox ID="endereco" runat="server" SelectionMode="Multiple" Width="192px"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnInserir" runat="server" Text="Inserir Site!" OnClick="BtnInserir_Click" />
                        <asp:Button ID="BtnEnd" runat="server" OnClick="BtnEnd_Click" Text="Selecionar!" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DPL" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
