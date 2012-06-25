<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="hotelrichardweb.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="style15">
    <table bgcolor="#313b44" style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Inscris Toi!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td align=left>
                            <asp:Label ID="Label5" runat="server" Text="Tu peux:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align=left>
                            <asp:Label ID="Label6" runat="server" 
                                Text="Avoir des conseils personalises sur l'hotel Richard et ses partenaires"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align=left>
                            <asp:Label ID="Label7" runat="server" 
                                Text="Faire partie du reseau des clients de l'hotel Richard et partager leurs expériences parisiennes"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align=left>
                            <asp:Label ID="Label8" runat="server" 
                                Text="Gerer tes reservations a l'hotel et publier des commentaires"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td align="center" style="width: 302px">
                            <asp:Label ID="Label2" runat="server" Text="Ton Email"></asp:Label></td>
                        <td>
                            
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td align="center" class="style12" style="width: 302px">
                            <asp:Label ID="Label3" runat="server" Text="Mot de Passe"></asp:Label></td>
                        <td>
                            
                            <asp:TextBox ID="TextBox2" runat="server" Width="128px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td align="center" style="width: 302px">
                            <asp:Label ID="Label4" runat="server" Text="Confirmation"></asp:Label></td>
                        <td>
                            
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Creer Mon Compte" Width="216px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
