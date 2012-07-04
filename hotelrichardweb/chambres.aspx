<%@ Page Title="Chambre d'hôtel pas chère à Paris, hôtel bon marché à Paris : Hôtel Richard, hôtel à bas prix à Paris" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chambres.aspx.cs" Inherits="hotelrichardweb.chambres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
    <td bgcolor="#313b44" align="left">
      
        
           
        <h1 class="style17"> 
        <span class="txtorange2">Nos Chambres et Services</h1><br />
<br />

    <li><h2 class="style17">40 chambres <b>entièrement renovées</b> au <b>coeur de Paris</b> </h2></li>
   
  <li><h2 class="style17"><asp:Literal ID="Literal7" runat="server" Text="Chambres de 1 à 5 personnes" /></h2></li>
                 
               
<li><h2 class="style17">Bagaggerie 24h/24</h2></li>
<li><h2 class="style17">Internet en <b>WIFI</b> dans toutes les chambres</h2></li>
<li><h2 class="style17">Boissons gratuites le matin (chocolat, thé ou café)</h2></li>

<br />
</td>
</tr>
<tr>
   <td bgcolor="#313b44" align="left">
    <table  cellspacing= "10px">
        <tr>
            <td valign="top" style="width: 422px">
                 <table>
                 <tr >
                 <td align="center">
                 <img id="Img1" src="~/images/img1.JPG" runat="server" 
                    style="height: 238px; width: 403px" 
                         title="chambre double avec salle de bains à l'intérieur"></img>
                </td>
                 </tr>
                
                <tr>
                <td  align="center"> <h2 class="style22">chambre double avec salle de bains à l'intérieur</h2> </td>
                </tr>
                </table>
             </td>
              <td  valign="top">
                 <table>
                 <tr>
                 <td align="center" >
                <img id="Img2" src="~/images/img2.JPG" runat="server" 
                    style="height: 237px; width: 403px" 
                         title="chambre double avec salle de bains sur palier"></img>
                 </td>
                </tr>
                <tr>
                <td  align="center"> <h2 class="style22">chambre double avec salle de bains sur palier </h2></td>
                </tr>
                </table>
              <td valign="top" style="width: 435px">
                <table>
                 <tr>
                 <td align="center" >
                <img id="Img3" src="~/images/img3.JPG" valign="top" runat="server" 
                         style="height: 241px; width: 392px" title="chambre simple"></img>
                </td>
                </tr>
                <tr>
                <td align="center">  <h2 class="style22" >chambre simple </h2> </td>
                </tr>
                </table>
        
        </tr>
        
    </table>
    </td>
    </tr>
    </table>

    </asp:Content>

