<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="hotelrichardweb.error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style30">
        <tr>
            <td>
                <asp:Literal ID="OUPS" runat="server" Text="OUPS! Cette Page n'existe plus!"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Text="Revenir a la page reservation" NavigateUrl="~/contactresa.aspx" ></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
              
            </td>
        </tr>
    </table>
</asp:Content>
