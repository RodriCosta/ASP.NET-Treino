<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCwebmenu.ascx.cs" Inherits="WA.WUCwebmenu" %>
<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem NavigateUrl="~/WFCursos.aspx" Text="Cursos" Value="Cursos"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/WfComponentes1.aspx" Text="Tabuada" Value="Tabuada"></asp:MenuItem>
    </Items>
</asp:Menu>

