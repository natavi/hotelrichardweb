<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.master" AutoEventWireup="true" CodeBehind="Salles.aspx.cs" Inherits="hotelrichardweb.Salles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:DataList ID="DataList1" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled" DataSourceID="datasource"
        RepeatDirection="Horizontal" ItemStyle-Width= "450px" ItemStyle-BorderWidth="4px" RepeatColumns="4" OnItemDataBound="changeColor">
        <ItemTemplate>
               <table>
               <tr class="style14">
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Name","{0:dd.MM.yyyy}")%>'>
     
                </asp:Label>
                </tr>
                <tr class="style14">
                <asp:Label ID="textboxp" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"description")%>'>
                </asp:Label>
                </tr>
                <tr class="style14">
                <asp:Image ID="Label1" runat="server" EnableViewState="true" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"path")%>'>
                </asp:Image>
                </tr>
                </table>
                </ItemTemplate>
    
    </asp:DataList>
    
    <asp:SqlDataSource ID="datasource" runat="server"
          SelectCommand="SELECT Name, description, photo FROM Sites where typesite='Salles'"  
          >
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>

</asp:Content>
