<%@ Page Title="Réservation d'hôtel pas cher à Paris, hôtel pas cher à Paris pour 4 personnes : Hôtel Richard
" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactresa.aspx.cs" Inherits="hotelrichardweb.contactresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<table width="950" bgcolor="#313b44" border="0" cellspacing="0" cellpadding="15">
<tr>
<td colspan="2">
    <span class="txtorange2">Nous contacter</span><br />
<br />
              <div align="center"><strong>HOTEL RICHARD</strong><br />
                35, rue Richard Lenoir<br />
                75011 Paris, FRANCE<br /><br />
              <span class="txtorange1">+33 (0)1 43 79 39 98</span></div>
<br/>
</td>
</tr>

<tr>
<td bgcolor="#313b44" colspan="2">
<h1 class="txtorange2">demande de reservation</h1><br />
<br />
 </td>
 </tr>    
          
 <tr valign="middle"> 

                    <td align="center"><h2 class="style22" >date </h2></td>
                    
                    <td  align="left" class="style22" > 

                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                      </td>
                     
                  </tr>

 <tr valign="middle">
                    <td align="center" valign="top"><h2 class="style22">nombre de nuits</h2></td>
                    <td  align="left" class="style22" valign="top">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rqv" runat="server" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                         <asp:CustomValidator id="rqtel" runat="server" OnServerValidate="NbValidate" ControlToValidate="TextBox1" 
                        ErrorMessage="invalid number of nights" EnableViewState="true">
                        </asp:CustomValidator>
                        </td>
      </tr>
       <tr valign="middle">
                    <td align="center" valign="top"><h2 class="style22">type d'habitation</h2></td>
                    
                    <td  align="left" class="style22" valign="top"><asp:DropDownList ID="DropDownList5" 
                            runat="server">  </asp:DropDownList>
                      </td>
                      
         </tr>
                
   <tr>

                    <td align="center" colspan="2" class="style14" >&nbsp;<asp:Button ID="Button1" runat="server"  Text="Reserver" 
                            Width="208px" onclick="Button1_Click" />
                      </td>
                </tr>
         
 </table>   

</asp:Content>

