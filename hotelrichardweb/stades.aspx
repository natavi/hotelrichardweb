﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.master" AutoEventWireup="true" CodeBehind="Musees.aspx.cs" Inherits="hotelrichardweb.stades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
    <asp:Repeater  ID="Datarepeat" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled" DataSourceID="availdatasource">
        
        

        <ItemTemplate>
               
               
                <tr >
                <td align="center" colspan="2" class="txtorange1">
                <asp:Label Id="labell" runat="server" EnableViewState="true" Font-Size="X-Large" Text='<%#DataBinder.Eval(Container.DataItem,"Name")%>'>
                </asp:Label>
                </td>
                </tr>
                <tr>
                </tr>
                <tr class="styleimage"> 
                <td rowspan="5" >
                <asp:Image ID="Image1"  runat="server"  ImageUrl= '<%#DataBinder.Eval(Container.DataItem,"path")%>' > </asp:Image> 
                </td>
               
                <td align="left">
                <asp:Label ID="textboxp" runat="server"  Font-Size="Medium"  EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Description")%>'>
                </asp:Label>
                </td>
                </tr>

                <tr>
                <td align="left">
                <asp:Label ID="Label1" runat="server"  Font-Size="Medium" EnableViewState="true" Text='Acces depuis hotel Richard:'>
                </asp:Label>
                </td>
                </tr>
                
                <tr>
                <td align="left">
                <asp:Label ID="Label2" runat="server"  Font-Size="Medium" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Localisation")%>'>
                </asp:Label>
                </td>
                </tr>
                
                <tr>
                <td align="left">
                <asp:Label ID="Label3" runat="server"  Font-Size="Medium" EnableViewState="true" Text='Temps de transport'>
                </asp:Label>
                </td>
                </tr>
                <tr>
                <td align="left">
                <asp:Label ID="Label7" runat="server"  Font-Size="Medium" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Temps")%>'>
                </asp:Label>
                <asp:Label ID="Label4" runat="server"  Font-Size="Medium" EnableViewState="true" Text=" minutes">
                </asp:Label>
                </td>
                </tr>
                
          </ItemTemplate>
    
    </asp:Repeater>
    
    </table>
    
    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT Name, Description, path, Localisation, Temps FROM Sites where type like @typem"  
          >
          <SelectParameters>
          <asp:Parameter name="typem" Type="String"/>
          </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>