<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="intermed.aspx.cs" Inherits="hotelrichardweb.intermed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44"><div class="main">

    
    <asp:DataList ID="DataList1" runat="server" EnableViewState = "true" 
        ViewStateMode="Enabled" DataSourceID="availdatasource"
        RepeatDirection="Horizontal" ItemStyle-Width= "450px" ItemStyle-BorderWidth="4px" RepeatColumns="4" OnItemDataBound="changeColor">
        <ItemTemplate>
               <table>
               <tr class="style14">
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"Date","{0:dd.MM.yyyy}")%>'>
     
                </asp:Label>
                </tr>
                <tr class="style14">
                <asp:Label ID="textboxp" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"prix")%>'>
                </asp:Label>
                </tr>
                <tr class="style14">
                <asp:HiddenField ID="hiddendisp" runat="server" EnableViewState="true" Value='<%#DataBinder.Eval(Container.DataItem,"disponibilite")%>'>
                </asp:HiddenField>
                </tr>
                </table>
                </ItemTemplate>
    
    </asp:DataList>
    
    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT Date, disponibilite, prix FROM Dates where Date >= @datedebut and Date < @datefin"  
          >
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="availdatasource2" runat="server"
          SelectCommand="SELECT min(disponibilite) FROM Dates where Date >= @datedebut and Date < @datefin" >
          
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="availdatasource3" runat="server"
          SelectCommand="SELECT SUM(prix) AS EXPR, MIN(disponibilite) AS EXPR2 FROM Dates where Date >= @datedebut and Date < @datefin" >
          
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>
     <asp:Label Id="Label2" runat="server" OnClick="reserve" Visible="false"> </asp:Label>  
    

    <asp:DataList ID="DataList3" runat="server" EnableViewState = "true" ViewStateMode="Enabled" DataSourceID="availdatasource3" OnItemDataBound="enablebutton">
        
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" EnableViewState="true" Text='Prix total de la reservation:' />
            <asp:Label ID="textboxprix" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"EXPR")%>'/>
            <asp:Button ID="buttonb" Text="reserver!" Visible="false" runat="server" OnClick="reserve" Width="500px" Height="100px" align="center"/>
            <asp:Label Id="nodisp" Text="Pas de disponibilite, merci de reserver pour une autre date" runat="server" Visible="false"/>
        </ItemTemplate>

    </asp:DataList>
    </div>
    </td>
  </tr>
 </table>
   
</asp:Content>