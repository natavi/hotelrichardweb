<%@ Page Title="" Language="C#" MasterPageFile="~/SiteGeneral.Master" AutoEventWireup="true" CodeBehind="ResaManagement.aspx.cs" Inherits="hotelrichardweb.ResaManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


               
                
                
<asp:DataList ID="DataList1" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled"
        ItemStyle-Width= "4000px" ItemStyle-BorderWidth="4px" 
        ItemStyle-HorizontalAlign =Left ItemStyle-BorderColor=White 
        ItemStyle-BackColor="OrangeRed" HeaderStyle-BackColor="Red" 
        HeaderStyle-BorderWidth="4px" HeaderStyle-BorderColor=White  
        HeaderStyle-HorizontalAlign =Left  HeaderStyle-Width="4000px" 
        DataSourceID="cdatasource">
        <ItemTemplate>
               <table bgcolor="#313b44">
               <tr>
               <td>     
                <asp:Label ID="label16" runat="server" EnableViewState="true" Text='Numero de reservation'/>
                </td>
                <td class="style18" >
                <asp:Label Id="label17" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"increm")%>'>    
                </asp:Label>
                </td> 
               
                </tr>

                <tr>
                <td>     
                <asp:Label ID="label5" runat="server" EnableViewState="true" Text='Date de la reservation'/>
                </td>
                <td class="style18" >
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"dateresa","{0:dd.MM.yyyy}")%>'>    
                </asp:Label>
                </td>              
                </tr>
                
                <tr>
                <td>
                <asp:Label ID="label10" runat="server" EnableViewState="true" Text='Nom'/>
                </td>
                <td class="style18" >
                <asp:Label ID="label2" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Nom")%>'>
                </asp:Label>
                </td>
                </tr>
                <tr>
                <td>
                <asp:Label ID="label11" runat="server" EnableViewState="true" Text='Prenom'/>
                </td>

                <td class="style18" >
                <asp:Label Id="label3" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prenom")%>'>
                </asp:Label>
                </td>
                </tr>
                
                <tr>
                
                <td>     
                <asp:Label ID="label12" runat="server" EnableViewState="true" Text='Debut du sejour'/>
                </td>
                <td class="style18">
                <asp:Label Id="label6" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"datedebut","{0:dd.MM.yyyy}")%>'>    
                </asp:Label>
                </td>
                
                </tr>
                
                <tr>
                
                <td>     
                <asp:Label ID="label13" runat="server" EnableViewState="true" Text='Duree'/>
                </td>
                <td class="style16">
                <asp:Label ID="Label7" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"duree")%>'>
                </asp:Label>
                </td>
                </tr>
                
                <tr>
                <td>     
                <asp:Label ID="label14" runat="server" EnableViewState="true" Text='Type de chambre'/>
                </td>
                <td class="style16">
                <asp:Label Id="label8" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"typechambre")%>'>
                </asp:Label>
                </td>

                </tr>
                <tr>
                <td>     
                <asp:Label ID="label15" runat="server" EnableViewState="true" Text='prix'/>
                </td>
                <td class="style16">
                <asp:Label ID="Label9" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prix")%>'>
                </asp:Label>
                </td>
                </tr>
                </table>

                <tr>
                <td>     
                <asp:Button ID="Button16" runat="server" EnableViewState="true" Text='Modifier la reservation' OnClick="Modify"/>
                </td>
                <td class="style16">
                <asp:Button ID="Button17" runat="server" EnableViewState="true" Text='Annuler la reservation' OnClick="Cancel"/>
                
                </td>
                </tr>
                </table>
        </ItemTemplate>
    
    </asp:DataList>


    <asp:SqlDataSource ID="cdatasource" runat="server"
          SelectCommand="SELECT dateresa, Nom, prenom, datedebut, duree, typechambre, prix, increm FROM Reservations where increm= @reservationnumber" >
    <SelectParameters>
        <asp:Parameter name="reservationnumber" Type="Int16"/>
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
