<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="~/inter.aspx.designer.cs" Inherits="hotelrichardweb.inter" title="inter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<span class="txtorange2">Nous contacter</span><br />
<br />
              <div align="center"><strong>HOTEL RICHARD</strong><br />
                35, rue Richard Lenoir<br />
                75011 Paris, FRANCE<br /><br />
              <span class="txtorange1">+33 (0)1 43 79 39 98</span></div>
<br>

<span class="txtorange2">Demande de Réservation</span><br />
<br />

                
               

    <asp:Repeater runat="server" ID ="repet" EnableViewState ="true" ViewStateMode="Enabled" DataSourceID="availdatasource">
                
                <ItemTemplate>
                <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%# Eval("Date") %>'>
                </asp:Label>
                <asp:Label ID="textboxp" runat="server" EnableViewState="true" Text='<%# Eval("prix") %>'>
                </asp:Label>
                <asp:HiddenField ID="hiddendisp" runat="server" EnableViewState="true" Value='<%# Eval("dispo") %>'>
                </asp:HiddenField>
                </ItemTemplate>
     </asp:Repeater>
    
    <asp:SqlDataSource ID="availdatasource" runat="server"
          SelectCommand="SELECT Date, disponibilite, prix FROM Dates where Date > @datedebut and Date < @datefin" 
          UpdateCommand="UPDATE Dates set disponibilite=@disponibilite, prix=@prix where Date=@date" >
    <SelectParameters>
        <asp:Parameter name="datedebut" Type="DateTime"/>
        <asp:Parameter Name="datefin" Type="DateTime"/>
    </SelectParameters>

    </asp:SqlDataSource>





		        <br>
                <table width="400" align="center" cellpadding=0 cellspacing=3>
                  <tr valign="top">
                    <td height="40" valign="middle" class="style4"><b>Message : </b>(facultatif)<b><BR />
                                        </b> </td>
                  </tr>

                  <tr>
                    <td align="center"><label>
                      &nbsp;</label></td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="Reserver" 
                            Width="208px" />
                      </td>
                  </tr>
                </table>
<br>
   
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function window_onload() {

        }

// ]]>
    </script>
<script language="javascript" type="text/javascript" for="window" event="onload">
// <![CDATA[
return window_onload()
// ]]>
</script>
</asp:Content>
