<%@ Page Title="A la recherche d'un hôtel pas cher à Paris ? Hôtel Richard, hôtel pas cher près de la Bastille à Paris" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tarif.aspx.cs" Inherits="hotelrichardweb.tarif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44">
<table  style="height: 205px; width: 894px">
  <tr >
    <td bgcolor="#313B44" width="300" > <h1 class="style17"> <strong>Chambre Simple </strong></h1></td>
    <td bgcolor="#fc7e02"><h1 class="style17"> <strong>35 €</strong></h1></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><h1 class="style17"> <strong>Chambre Double avec Salle de Bains partagée</strong></h1></td>
    <td bgcolor="#fc7e02"><div align="center"><h1 class="style17"> <strong>45 €</strong></h1></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><h1 class="style17" style="width: 364px"> <strong>Chambre Double avec Salle de Bains</strong></h1></td>
    <td bgcolor="#fc7e02"><div align="center"><h1 class="style17"> <strong>50 €</strong></h1></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><h1 class="style17"> <strong>Dortoir 4 personnes</strong></h1></td>
    <td bgcolor="#fc7e02"><div align="center"><h1 class="style17"> <h1 class="style17"> <strong>60 €</strong></h1></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><h1 class="style17"> <strong>Dortoir 5 personnes</strong></h1></td>
    <td bgcolor="#fc7e02"><div align="center"><h1 class="style17"> <strong>75 €</strong></h1></td>
  </tr>
  </table>
  
  </td>
  </tr>
 </table>
<div align="center"><br />
    <span class="Style1"><asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:ligne6%>" /> <br />
    <asp:Literal ID="Literal7" runat="server" Text="<%$ Resources:ligne7%>" /></span></div>
</asp:Content>