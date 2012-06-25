<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeFile="login.aspx.cs" Inherits="hotelrichardweb.login" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
    
    <asp:TextBox ID="Login" runat="server" onclick="Button1_Click" Text="Login">
    </asp:TextBox>
  
    <asp:TextBox ID="Pwd" runat="server" onclick="Button1_Click" Text="Mot de Passe">
    </asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="" 
        Width="800px" />
    
</asp:Content>