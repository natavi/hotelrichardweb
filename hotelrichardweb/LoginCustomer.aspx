<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginCustomer.aspx.cs" Inherits="hotelrichardweb.LoginCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="width: 150px; height: 53px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 53px">
  
    <asp:TextBox ID="Pwd" runat="server" Text="Code Reservation ou Mot de Passe" 
                    style="margin-bottom: 27px">
    </asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 51px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 51px">
<asp:TextBox ID="Login" runat="server" Text="Numero de Reservation ou email">
    </asp:TextBox>
  
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 63px">
            </td>
            <td style="height: 63px">

    <asp:Button ID="btn" runat="server" onclick="Button1_Click" Text="Valider">
    </asp:Button>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="datasource" runat="server"
          SelectCommand="SELECT increm FROM Reservations where increm=@increm and confidentialcode=@confidentialcode"  
    >
    </asp:SqlDataSource>

    <asp:DataList ID="dl" runat="server" EnableViewState = "true" ViewStateMode="Enabled" DataSourceID="datasource">
        <ItemTemplate>
            <asp:HiddenField ID="increm" runat="server" EnableViewState="true" Value='<%#DataBinder.Eval(Container.DataItem,"increm")%>'/>
         </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContactAcces" runat="server">
</asp:Content>
