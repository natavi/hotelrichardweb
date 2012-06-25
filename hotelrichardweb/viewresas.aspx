<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewresas.aspx.cs" Inherits="hotelrichardweb.viewresas" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
   <tr>
    <td class="style16">
    <asp:Label ID="Label1" runat="server" Text="Date Debut"></asp:Label>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
   </td>
   </tr>
   <tr>
    <td class="style16">
    <asp:Label ID="Label2" runat="server" Text="Date Fin"></asp:Label>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList4" runat="server">
    </asp:DropDownList>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList5" runat="server">
    </asp:DropDownList>
    </td>
    <td class="style16">
    <asp:DropDownList ID="DropDownList6" runat="server">
    </asp:DropDownList>
   </td>
   </tr>
   <tr>
    <td colspan=4>
    <asp:Button Text="OK" runat="server" Width='500px' onclick="Unnamed1_Click"> </asp:Button>
   </td>
   </tr>
   </table>

    <asp:DataList ID="DataList1" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled" DataSourceID="availdatasource" ItemStyle-Width= "4000px" ItemStyle-BorderWidth="4px" ItemStyle-HorizontalAlign =Left ItemStyle-BorderColor=White ItemStyle-BackColor="OrangeRed" HeaderStyle-BackColor="Red" HeaderStyle-BorderWidth="4px" HeaderStyle-BorderColor=White  HeaderStyle-HorizontalAlign =Left  Cell HeaderStyle-Width="4000px">
        <HeaderTemplate>
            <table >
               <tr>
               
                <td class="style16" >
                <asp:Label ID="label5" runat="server" EnableViewState="true" Text='Number'>
                </asp:Label>
                </td>
                <td class="style18" >
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='Date Resa'>    
                </asp:Label>
                </td>
                <td class="style18" >
                <asp:Label ID="label2" runat="server" EnableViewState="true" Text='Nom'>
                </asp:Label>
                </td>
                <td class="style18" >
                <asp:Label Id="label3" runat="server" EnableViewState="true" Text='Prenom'>
                </asp:Label>
                </td>
                
                
                <td class="style18">
                <asp:Label Id="label6" runat="server" EnableViewState="true" Text='Date Arrivee'>    
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label ID="Label7" runat="server" EnableViewState="true" Text='duree'>
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label Id="label8" runat="server" EnableViewState="true" Text='Type de chambre'>
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label ID="Label9" runat="server" EnableViewState="true" Text='prix'>
                </asp:Label>
                </td>
                </tr>
                </table>
        </HeaderTemplate>
        <ItemTemplate>
               <table>
               <tr>
               <td class="style16" >
                <asp:HyperLink NavigateUrl=<%# DataBinder.Eval(Container.DataItem,"email","mailto:{0}")%> ID="label4" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"increm")%>'>
                </asp:HyperLink>
                </td>
               <td class="style18" >
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"dateresa","{0:dd.MM.yyyy}")%>'>    
                </asp:Label>
                </td>              
                <td class="style18" >
                <asp:Label ID="label2" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Nom")%>'>
                </asp:Label>
                </td>
                <td class="style18" >
                <asp:Label Id="label3" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prenom")%>'>
                </asp:Label>
                </td>
                
                <td class="style18">
                <asp:Label Id="label6" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"datedebut","{0:dd.MM.yyyy}")%>'>    
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label ID="Label7" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"duree")%>'>
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label Id="label8" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"typechambre")%>'>
                </asp:Label>
                </td>
                <td class="style16">
                <asp:Label ID="Label9" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prix")%>'>
                </asp:Label>
                </td>
                </tr>
                </table>
        </ItemTemplate>
    
    </asp:DataList>
    
    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT dateresa, Nom, prenom, increm, email, telephone, datedebut, duree, typechambre, prix FROM Reservations where dateresa >= @datedebut and dateresa < @datefin"  
          >
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>


</asp:Content>

