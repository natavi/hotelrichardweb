<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detailsCB.aspx.cs" Inherits="hotelrichardweb.detailsCB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                 <table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44"><div class="main">
                 
                   <table align="center" cellpadding=0 cellspacing=3 
                       style="width: 620px; height: 146px; margin-bottom: 0px;"> 
                  <tr valign="middle"> 

                    <td class="style15" style="height: 82px">Carte de crédit (connexion securisée par COMODO):<br />
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="http://ssl.comodo.com/comodo-ssl.php?key5sk1=51b8f5ad2c1573e4e3fdfc657999e3d430d1cc62&amp;key5sk2=2128&amp;key5sk3=1337694397000&amp;key5sk14=2128&amp;key5sk15=1337694396000&amp;key5sk16=2128&amp;key5sk17=1337694427000&amp;key6sk1=&amp;key6sk2=IE90&amp;key6sk3=7&amp;key6sk4=fr&amp;key6sk5=FR&amp;key6sk6=1&amp;key6sk7=http%253A%252F%252Fwww.comodo.com%252F&amp;key6sk8=112202&amp;key6sk9=1429804&amp;key6sk10=true&amp;key6sk11=16a6e1499e94ebd120272fcfdf1d90b57d4ea3af&amp;key7sk1=2&amp;key1sk1=dt&amp;key1sk2=http%253A%252F%252Fwww.comodo.com%252F">Voir Certificat SSL</asp:HyperLink>
                      </td>
                    
                    <td  align="right" style="width: 309px; height: 82px;"> 
                    <div align =right>
                    <asp:TextBox ID="CCnumber" runat="server" style="margin-left: 0px" Width="159px"></asp:TextBox>

                        <br />
                    </div>
                    <asp:CustomValidator id="CustomValidator1" runat="server" OnServerValidate="TextValidate" ControlToValidate="CCnumber" 
                        ErrorMessage="invalid CC NUMBER">
                     </asp:CustomValidator>

                     </td>
                 </tr>
                 
                    <tr>
                    <td class="style15" style="height: 79px">
                  Date d'expiration :</td>

                    <td  align="right" style="width: 309px; height: 79px;">
                        <p>
                    <div align= right></div>
                    <table>
                      <tr>
                      <td abbr="right" style="width: 395px">
                      <asp:DropDownList ID="expdatemois" runat="server" style="margin-left: 0px" 
                              Height="16px" Width="88px">
                            </asp:DropDownList>
                       </td>
                       <td width="500px">     
                       <asp:DropDownList ID="expdateannee" runat="server" Height="16px" 
                                style="margin-left: 0px" Width="86px">
                            </asp:DropDownList>
                        </td>
                        </tr>
                    </table>
                    </div>
                    </p>
                   </td>
                 </tr>
                  
                  <tr>
                  <td class="style15" style="height: 54px; width: 302px;">3 chiffres au dos de la carte</td>
                  <td style="width: 309px; height: 54px;">
                  <div align="right">
                  <asp:TextBox ID ="threenumbers" runat="server"
                          Width="109px" style="margin-left: 194px"></asp:TextBox>
                  </td>
                  </div>
                  </tr>
                  <tr>
                  <td class="style15" style="height: 54px"; width: "800px"; colspan="2" align= "right">&nbsp;
                   <asp:Button ID="Button1" Text="OK" runat="server" Width="682px" align="right" 
                               onclick="Button1_Click" style="border-right:100px"></asp:Button>
                  </td>
                  </tr>
                  
                  </tr>
                  
                
                  </table>

      <asp:SqlDataSource ID="insertdatasource" runat="server"
          InsertCommand="INSERT INTO Reservations (Nom, Prenom,Adresse, telephone, datedebut, duree, typechambre, prix) VALUES (@nom,@prenom,@adresse,@telephone,@datedebut,@duree,@typechambre,@prix); SELECT SCOPE_IDENTITY() AS EXPR2"
          Selectcommand="SELECT SCOPE_IDENTITY() AS EXPR">
    </asp:SqlDataSource>
 

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          InsertCommand="select (Nom, Prenom,Adresse, telephone, datedebut, duree, typechambre, prix) VALUES (@nom, @prenom, @adresse, @telephone, @datedebut, @duree, @TypeChambre, @prix)" >
    </asp:SqlDataSource>
    </div>
    </td>
  </tr>
 </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContactAcces" runat="server">
</asp:Content>
