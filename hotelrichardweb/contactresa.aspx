<%@ Page Title="Réservation d'hôtel pas cher à Paris, hôtel pas cher à Paris pour 4 personnes : Hôtel Richard
" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactresa.aspx.cs" Inherits="hotelrichardweb.contactresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44"><div class="main">
    <span class="txtorange2">Nous contacter</span><br />
<br />
              <div align="center"><strong>HOTEL RICHARD</strong><br />
                35, rue Richard Lenoir<br />
                75011 Paris, FRANCE<br /><br />
              <span class="txtorange1">+33 (0)1 43 79 39 98</span></div>
<br/>

<span class="txtorange2"><asp:Literal ID="Literal9" runat="server" Text="demande de reservation" /></span><br />
<br />

                
                <table align="center" cellpadding=0 cellspacing=3 class="style4" 
                    style="width: 546px">


                  <tr valign="middle"> 
                    <td height="40" colspan="2" valign="middle" class="style4"><h4 class="style5"/></td>
                  </tr>


                  <tr valign="middle"> 

                    <td class="style4"></td>

                    <td  align="center" class="style4">                    &nbsp;</td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style14"><asp:Literal ID="Literal3" runat="server" Text="date" /></td>
                    
                    <td  align="center"> 

                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                      </td>
                     
                  </tr>

                  <tr valign="middle">
                    <td class="style14"><asp:Literal ID="Literal2" runat="server" Text="nombre de nuits" /></td>
                    <td  align="left"><div align="right">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                            Width="40px"></asp:TextBox>
                        &nbsp;</div>
                        <asp:RequiredFieldValidator ID="rqv" runat="server" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                         <asp:CustomValidator id="rqtel" runat="server" OnServerValidate="NbValidate" ControlToValidate="TextBox1" 
                        ErrorMessage="invalid number of nights" EnableViewState="true">
                        </asp:CustomValidator>
                        </td>
                  </tr>
                  <tr valign="middle">
                    <td class="style14" valign="top"><asp:Literal ID="Literal1" runat="server"  Text="type d'habitation" /></td>
                    
                    <td  align="right" valign="top">&nbsp;<asp:DropDownList ID="DropDownList5" 
                            runat="server">
                        </asp:DropDownList>
                      </td>
                      </div>
                  </tr>
                </table>


                <table width="400" align="center" cellpadding=0 cellspacing=3>
                

                  <tr>
                    <td align="center"><label>
                      &nbsp;</label></td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" class="style14" >&nbsp;<asp:Button ID="Button1" runat="server"  Text="Reserver" 
                            Width="208px" onclick="Button1_Click" />
                      </td>
                  </tr>
                </table>
<br>
</div>
</td>
  </tr>
 </table>

</asp:Content>

