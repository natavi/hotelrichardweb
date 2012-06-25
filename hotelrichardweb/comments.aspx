<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="comments.aspx.cs" Inherits="hotelrichardweb.comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:DataList ID="DataList1" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled" DataSourceID="availdatasource"
        RepeatDirection="Horizontal" ItemStyle-Width= "450px" ItemStyle-BorderWidth="4px" RepeatColumns="4" OnItemDataBound="changeColor">
        <ItemTemplate>
               <table>
               <tr>
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Date","{0:dd.MM.yyyy}")%>'>
     
                </asp:Label>
                </tr>
                <tr>
                <asp:Label ID="textboxp" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prix")%>'>
                </asp:Label>
                </tr>
                <tr>
                <asp:HiddenField ID="hiddendisp" runat="server" EnableViewState="true" Value='<%#DataBinder.Eval(Container.DataItem,"disponibilite")%>'>
                </asp:HiddenField>
                </tr>
                </table>
                </ItemTemplate>
    
    </asp:DataList>

    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT user comment AS EXPR2 FROM COMMENTS">
          
    </asp:SqlDataSource>
     
     <asp:Label Id="Label2" runat="server" OnClick="reserve" Visible="false"> </asp:Label>  
    

    <asp:DataList ID="DataList3" runat="server" EnableViewState = "true" ViewStateMode="Enabled" DataSourceID="availdatasource3" OnItemDataBound="enablebutton">
        
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" EnableViewState="true" Text='On <%#DataBinder.Eval(Container.DataItem,"EXPR3")%>'/>
            <asp:Label ID="textboxprix" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"EXPR")%> wrote'/>
            <asp:Label ID="Label1" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"EXPR2")%>'/>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContactAcces" runat="server">
</asp:Content>
