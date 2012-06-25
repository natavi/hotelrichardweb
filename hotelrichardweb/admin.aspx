<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeFile="admin.aspx.cs" Inherits="hotelrichardweb.admin" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
    
    <asp:DropDownList ID="datedebutjour" runat="server">
    </asp:DropDownList>
    
    <asp:DropDownList ID="datedebutmoisannnee" runat="server">    
    </asp:DropDownList>

    <br />
    
    <asp:DropDownList ID="datefinjour" runat="server">
    </asp:DropDownList>
    
    <asp:DropDownList ID="datefinmoisannnee" runat="server">    
    </asp:DropDownList>
    <br />
    <asp:HiddenField ID ="duree" runat="server">
    
    </asp:HiddenField>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Disponibilités!" 
        Width="800px" />

    <div>
     <asp:DataList RepeatDirection="Horizontal" RepeatColumns=5 ItemStyle-Width="600px" runat="server" ID ="repet"  EnableViewState ="true" ViewStateMode="Enabled" DataSourceID="cdatasource">
     
     <ItemTemplate>
     <table>
     <tr>
     <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%# DataBinder.Eval(Container.DataItem,"Date","{0:dd.MM.yyyy}")%>'>
     </asp:Label>
     </tr>
     <tr>
     <asp:TextBox ID="textboxd" runat="server" EnableViewState="true" Text='<%# DataBinder.Eval(Container.DataItem,"disponibilite") %>'>
     </asp:TextBox>
     </tr>
     <tr>
     <asp:TextBox ID="textboxp" runat="server" EnableViewState="true" Text='<%# DataBinder.Eval(Container.DataItem,"prix") %>'>
     </asp:TextBox>
     </tr>
     </table>
     </ItemTemplate>
     
     </asp:DataList>     
    </div>
    <p>
        &nbsp;</p>
    <p>

    <asp:Button ID="Button2" runat="server" onclick="Button3_Click" Text="Mettre a jour Prix!" 
        Width="800px" style="margin-bottom: 0px" />

    </p>
    <asp:SqlDataSource ID="cdatasource" runat="server"
          SelectCommand="SELECT Date, disponibilite, prix FROM Dates where Date >= @datedebut and Date <= @datefin" 
          UpdateCommand="UPDATE Dates set disponibilite=@disponibilite, prix=@prix where Date=@date" >
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter name="date" Type="DateTime"/>
        <asp:Parameter Name="disponibilite" Type="Int32"/>
        <asp:Parameter Name="prix" Type="Int32"/>
    </UpdateParameters>
    
    </asp:SqlDataSource>
    
</asp:Content>