<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/AddSITE.aspx.cs" Inherits="hotelrichardweb.AddSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 564px; height: 47px;">
                <asp:Label ID="Label2" runat="server" Text="Nom" CssClass="style16"></asp:Label>
            </td>
            <td style="height: 47px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 564px; height: 77px;">
                <asp:Label ID="Label1" runat="server" Text="Description" CssClass="style16"></asp:Label>
            </td>
            <td style="height: 77px">
                <asp:TextBox ID="TextBox3" runat="server" Height="101px" Rows="10" 
                    Width="164px"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td style="width: 564px; height: 110px;">
                <asp:Label ID="Label3" runat="server" Text="Type" CssClass="style16"></asp:Label>
            </td>
            <td style="height: 110px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
           
            
        </tr>
        <tr>
            <td style="width: 564px; height: 110px;">
                <asp:Label ID="Label4" runat="server" Text="Localisation" CssClass="style16"></asp:Label>
            </td>
            <td style="height: 110px">
                 <asp:TextBox ID="TextBox1" runat="server" Height="91px" Rows="10" Width="161px"></asp:TextBox>
            </td>     
        </tr>
        <tr>
            <td style="width: 564px">
                &nbsp;</td>
            <td>
                
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" 
                    style="height: 26px" Width="89px" />
                
            </td>
           
            
        </tr>
    </table>
    
    <asp:SqlDataSource ID="cdatasource" runat="server"
          InsertCommand="INSERT INTO Sites VALUES (@nom,@description,@type);" 
    >
    <InsertParameters>
        <asp:Parameter name="nom" Type="String"/>
        <asp:Parameter Name="description" Type="String"/>
        <asp:Parameter Name="type" Type="String"/>
    </InsertParameters>
    
    </asp:SqlDataSource>
</asp:Content>
