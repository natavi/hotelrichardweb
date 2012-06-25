<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="hotelrichardweb.confirm" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<span class="txtorange2">Nous contacter</span><br />
<br />
              <div align="center"><strong>HOTEL RICHARD</strong><br />
                35, rue Richard Lenoir<br />
                75011 Paris, FRANCE<br /><br />
              <span class="txtorange1">+33 (0)1 43 79 39 98</span></div>
<br>

<span class="txtorange2">Confirmation de Réservation</span><br />
<br />

                
                <table align="center" cellpadding=0 cellspacing=3 class="style4" 
                    style="width: 445px">
           
                  <tr valign="middle"> 

                    <td class="style4" align="center">
                            <asp:SqlDataSource ID="selectincremdata" runat="server" SelectCommand="SELECT Nom, Prenom, datedebut, duree, typechambre FROM Reservations  WHERE increm=@increm" >
                            </asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="selectincremdata">
                  
                        <ItemTemplate>
                         
                         <asp:Label Id="label4" runat="server" EnableViewState="true" Text='Nous vous confirmons la reservation au nom de'></asp:Label>
                         <br />

                         <br>
                         <asp:Label Id="label5" runat="server" EnableViewState="true" Font-Bold="true" Text='<%#DataBinder.Eval(Container.DataItem,"Nom")%>'> </asp:Label>
                         <asp:Label Id="label6" runat="server" EnableViewState="true" Font-Bold="true" Text='<%#DataBinder.Eval(Container.DataItem,"Prenom")%>'> </asp:Label>
                         <br/>

                         <br>
                         <asp:Label Id="labelr" runat="server" EnableViewState="true" Text='pour le '></asp:Label>
                         <asp:Label Id="labell" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"datedebut","{0:dd.MM.yyyy}")%>'></asp:Label>
                         <br />
                         <br>
                         <asp:Label Id="label2" runat="server" EnableViewState="true" Text='pour une duree de'></asp:Label>
                         <asp:Label Id="labelld" runat="server" EnableViewState="true" Text='<%#DataBinder.Eval(Container.DataItem,"duree")%>'></asp:Label>
                         <asp:Label Id="label3" runat="server" EnableViewState="true" Text='nuits'></asp:Label>
                         <br />
                         <br>
                         <asp:Label Id="label9" runat="server" EnableViewState="true" Text='en chambre double a l hotel Richard'></asp:Label>
                         <br />
                         <br>
                         <asp:Label Id="label8" runat="server" EnableViewState="true" Text='Un email de confirmation vous a été envoyé'></asp:Label>
                         <br />
                        </ItemTemplate>
                        </asp:DataList>
                        
                        
                      </td>

                    <td  align="center" class="style4">                    &nbsp;</td>
                  </tr>

           
                </table>
<br>
   
</asp:Content>