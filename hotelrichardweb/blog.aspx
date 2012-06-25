<%@ Page Title="" Language="C#" MasterPageFile="~/BlogMasterPage.master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="hotelrichardweb.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BlogContent" runat="server">

    <table>
    <tr>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </tr>
    <tr>
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
               <table>
               <tr class="style14">
                <td>
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Name")%>'>
     
                </asp:Label>
                </td>
                <td>
                <tr class="style14">
                <asp:Label ID="textboxp" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Lieu")%>'>
                </asp:Label>
                </tr>
                </td>
                <tr class="style14">
                <td>
                <asp:Label ID="Label1" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"descriptionb")%>'>
                </asp:Label>
                </td>
                <td>
                <asp:Label ID="Label2" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"descriptionb")%>'>
                </asp:Label>
                </td>
                </tr>

                </table>
                </ItemTemplate>
    
    </asp:DataList>

    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT Name, Lieu,description, photo, datedebut, datefin FROM Evenements where datedebut < @today and datefin>@today" >
    <SelectParameters>
        <asp:Parameter name="today" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>
    </tr>
    </table>

</asp:Content>

