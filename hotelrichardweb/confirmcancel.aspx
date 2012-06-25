<%@ Page Title="" Language="C#" MasterPageFile="~/SiteGeneral.Master" AutoEventWireup="true" CodeBehind="confirmcancel.aspx.cs" Inherits="hotelrichardweb.confirmcancel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="style22">
        <tr>
            <td style="height: 19px">
                <asp:Literal ID="Literal3" runat="server" Text="Demande d'annulation"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                Etes vous sur de vouloir annuler la reservation numero
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Annuler la reservation" 
                    Width="162px" onclick="Button1_Click" />
            </td>
        </tr>
    </table>


     <asp:SqlDataSource ID="cdatasource" runat="server"
          UpdateCommand="UPDATE Reservations set statut='Cancelled' where increm=@reservationnumber" >
    <UpdateParameters>
        
        <asp:Parameter Name="reservationnumber" Type=Int32/>
        
    </UpdateParameters>
    
    </asp:SqlDataSource>
</asp:Content>
