<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" 
CodeFile="contact.aspx.cs" Inherits="hotelrichardweb.contact" title="Untitled Page" %>
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
<form name="upload" action="reservation2.php" method="post">
                
                <table align="center" cellpadding=0 cellspacing=3 class="style4" 
                    style="width: 445px">


                  <tr valign="middle"> 

                    <td height="40" colspan="2" valign="middle" class="style4"><h4 class="style5">Votre séjour :</h4>                    </td>
                  </tr>


                  <tr valign="middle"> 

                    <td class="style4"></td>

                    <td  align="center" class="style4">                    &nbsp;</td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style4">Date d'arrivée :</td>

                    <td  align="right"> 

                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" 
                            style="margin-left: 0px">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                      </td>
                  </tr>

                  <tr valign="middle">
                    <td class="style4">Nombre de Nuit(s) :</td>
                    <td  align="left"><div align="right">
                        &nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
                    </div></td>
                  </tr>
                  <tr valign="middle">
                    <td class="style4" valign="top">Type de chambres :</td>
                    <td  align="right" valign="top">&nbsp;<asp:DropDownList ID="DropDownList5" 
                            runat="server">
                        </asp:DropDownList>
                      </td>
                  </tr>
                </table>

<br>



                <table width="400" height="360" align="center" cellpadding=0 cellspacing=3> 

                  <tr valign="top"> 

                    <td height="40" colspan="2" valign="middle" class="style4"><b>Vos Coordonnées :<BR />
                      </b> </td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style4">Nom :</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div></td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style4">Prénom :</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </div></td>
                  </tr>

				   

				    <tr valign="middle">
                      <td valign="top" class="style4">Adresse :</td>
				      <td  align="right">
                          <div align="right">
                            <textarea name="adresse" cols="25" rows="3" class="smallform" id="adresse"></textarea>
                          </div></td>
			      </tr>
				    <tr valign="middle"> 

                    <td class="style4">Téléphone :</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </div></td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style4">Email :</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </div></td>
                  </tr>
                  
                  <tr valign="middle"> 

                    <td class="style4">Carte de crédit (connexion securisée:</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </div></td>
                        </tr>
                    <tr valign="middle"> 

                    <td height="104" class="style4">Date d'expiration :</td>

                    <td  align="right">
                    &nbsp;<p>
                      &nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" 
                                style="margin-left: 0px">
                            </asp:DropDownList>
                    </p></td>
                  </tr>
					<tr valign="middle"> 

                    <td height="104" class="style4">Code secret à 3 chiffres:</td>

                    <td  align="right"> 

 
                      <div align="right">
                        &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </div></td>
                        
                    
                  </tr>
                </table>

			 
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
</form>   
</asp:Content>