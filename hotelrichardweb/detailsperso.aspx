<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detailsperso.aspx.cs" Inherits="hotelrichardweb.detailsperso"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44"><div class="main">
    
    <table width="400" height="360" align="center" cellpadding=0 cellspacing=3 
        style="margin-left: 0px"> 

                  <tr valign="top"> 

                    <td colspan="2" valign="middle" class="style14" style="height: 15px"><b>Vos Coordonnées :<BR />
                      </b> </td>
                  </tr>

                  <tr valign="middle"> 

                    <td style="width:707px" class="style14"><asp:Literal ID="Literal3" runat="server" 
                            Text="nom" /></td>

                    <td  align="right"> 

 
                      <div align="right">
                          

                        <asp:TextBox ID="nom" runat="server"></asp:TextBox>
                         </div>
                         </td>
                         <asp:RequiredFieldValidator id="rqnom" ControlToValidate="nom" Display="Static" ErrorMessage="*" runat="server"/>
                        
                        
                     
                        <br />
                        

                     </td>
                  </tr>

                  <tr valign="middle"> 

                    <td class="style14" style="width: 707px"><asp:Literal ID="Literal1" runat="server" Text="prenom" /></td>

                    <td  align="right"> 

 
                      <div align="right">
                          
                        <asp:TextBox ID="prenom" runat="server"></asp:TextBox>
                        </div>
                        </td>
                        <asp:RequiredFieldValidator id="rqprenom" ControlToValidate="prenom" Display="Static" ErrorMessage="*" runat="server"/>
                       
                       
                      
                  </tr>

				   

				    <tr valign="middle">
                      <td class="style14" style="width: 707px"><asp:Literal ID="Literal2" runat="server" Text="adresse" /></td>
				      
                      <td  align="right">
                          <div align="right">
                          <asp:TextBox id="adresse" runat="server"> </asp:TextBox></div>
                          </td>
                          <asp:RequiredFieldValidator id="rqadresse" ControlToValidate="adresse" Display="Static" ErrorMessage="*" runat="server"/>
                           

                        <br />
                       
			      </tr>
				    <tr valign="middle"> 

                    <td class="style14" style="width: 707px"><asp:Literal ID="Literal4" runat="server" Text="telephone" /></td>

                    <td  align="right"> 

 
                      <div align="right">
                          

                        <asp:TextBox ID="Tel" runat="server"></asp:TextBox>
                        </div></td>
                        <asp:CustomValidator id="rqtel" runat="server" OnServerValidate="TelValidate" ControlToValidate="Tel" 
                        ErrorMessage="invalid telephone" EnableViewState="true">
                     </asp:CustomValidator>
                     <asp:RequiredFieldValidator id="rqtelephone" ControlToValidate="Tel" Display="Static" ErrorMessage="*" runat="server"/>

                        
                  </tr>

                  <tr valign="middle"> 

                    <td class="style14" style="width: 707px"><asp:Literal ID="Literal5" runat="server" Text="email" /></td>

                    <td  align="right"> 

 
                      <div align="right">
                         <asp:TextBox ID="mail" runat="server"></asp:TextBox>
                        </div>
                        </td>
                         <asp:CustomValidator id="CustomValidator9" runat="server" 
                              OnServerValidate="MailValidate" ControlToValidate="mail" 
                        ErrorMessage="invalid mail" EnableViewState="true"></asp:CustomValidator>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator1" ControlToValidate="mail" Display="Static" ErrorMessage="*" runat="server"/>
                        &nbsp;
                        
                       
                  </tr>

                  <tr valign="middle">
                   <td style="width: 707px">
                     
                       </td>
                       <td>
                      <asp:Button ID="Button1" Text="OK" runat="server" Width="219px" align="center" 
                               onclick="Button1_Click" style="margin-bottom: 0px"></asp:Button>
                       </td>
                  </tr>
                  </div>
    </td>
  </tr>
 </table>

</asp:Content>

