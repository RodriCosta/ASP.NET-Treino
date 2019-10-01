<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="WAagenda.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de Usuários</h3>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="email" DataSourceID="SqlDataSourceUsuarios" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            senha:
            <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
<br /><br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">email:
            <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
            <br />
            nome:
            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            senha:
            <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Salvar" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Nenhum dado foi retornado.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />nome:
            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />senha:
            <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            senha:
            <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            senha:
            <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
<br /><br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [email] = @email" InsertCommand="INSERT INTO [usuario] ([email], [nome], [senha]) VALUES (@email, @nome, @senha)" SelectCommand="SELECT [email], [nome], [senha] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [nome] = @nome, [senha] = @senha WHERE [email] = @email" OnSelecting="SqlDataSourceUsuarios_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
