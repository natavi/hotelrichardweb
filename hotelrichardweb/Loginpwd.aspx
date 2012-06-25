<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loginpwd.aspx.cs" Inherits="hotelrichardweb.Loginpwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:TextBox ID="Login" runat="server" onclick="Button1_Click" Text="">
    </asp:TextBox>
  
    <asp:TextBox ID="Pwd" runat="server" onclick="Button1_Click" Text="">
    </asp:TextBox>

    <asp:Button ID="btn" runat="server" onclick="Button1_Click" Text="">
    </asp:Button>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContactAcces" runat="server">
</asp:Content>