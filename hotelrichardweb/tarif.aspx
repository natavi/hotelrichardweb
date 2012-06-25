<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tarif.aspx.cs" Inherits="hotelrichardweb.tarif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<table width="950" border="0" cellspacing="0" cellpadding="15">
<tr>
<td bgcolor="#313b44"><div class="main">
<table width="700" class="style15">
  <tr>
    <td bgcolor="#313B44" width="300"><strong><asp:Literal ID="Literal2" runat="server" Text="Chambre Simple" /></strong></td>
    <td bgcolor="#fc7e02"> <div align="center"><strong>35 €</strong></div></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><strong><asp:Literal ID="Literal1" runat="server" Text="Chambre Double avec Salle de Bains partagée" /></strong></td>
    <td bgcolor="#fc7e02"><div align="center"><strong>45 €</strong></div></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><strong><asp:Literal ID="Literal3" runat="server" Text="Chambre Double avec Salle de Bains" /></strong></td>
    <td bgcolor="#fc7e02"><div align="center"><strong>50 €</strong></div></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><strong><asp:Literal ID="Literal4" runat="server" Text="Dortoir 4 personnes" /></strong></td>
    <td bgcolor="#fc7e02"><div align="center"><strong>60 €</strong></div></td>
  </tr>
  
  <tr>
    <td bgcolor="#313B44" width="300"><strong><asp:Literal ID="Literal5" runat="server" Text="Dortoir 5 personnes" /></strong></td>
    <td bgcolor="#fc7e02"><div align="center"><strong>75 €</strong></div></td>
  </tr>
  </table>
  </div>
  </td>
  </tr>
 </table>
<div align="center"><br />
    <span class="Style1"><asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:ligne6%>" /> <br />
    <asp:Literal ID="Literal7" runat="server" Text="<%$ Resources:ligne7%>" /></span></div>
</asp:Content>