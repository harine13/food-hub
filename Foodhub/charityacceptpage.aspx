<%@ Page Title="" Language="C#" MasterPageFile="~/Charitymaster.Master" AutoEventWireup="true" CodeBehind="charityacceptpage.aspx.cs" Inherits="Foodhub.charityacceptpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
        <table cellpadding="10" cellspacing="10" align="center"class="table" style="width:700px;">
    <tr><td colspan="2" align="center">
        <asp:Label ID="Label3" runat="server" Text="Donation Notification" 
            Font-Bold="True" Font-Names="Algerian" ForeColor="#660033"></asp:Label></td></tr>
    <tr><td><asp:Label ID="Label1" runat="server" Text="Donor Id:"></asp:Label></td>
        <td>
            <asp:Label ID="lbldonorid" runat="server"></asp:Label>
        </td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Donor Name:"></asp:Label></td>
        <td>
            <asp:Label ID="lbldonorname" runat="server"></asp:Label>
        </td></tr>
        <tr><td><asp:Label ID="Label4" runat="server" Text="Contact:"></asp:Label></td>
        <td>
            <asp:Label ID="lblcontact" runat="server"></asp:Label>
        </td></tr>
        <tr><td><asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label></td>
        <td>
            <asp:Label ID="lblemail" runat="server"></asp:Label>
        </td></tr>
        <tr><td><asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label></td>
        <td>
            <asp:Label ID="lbladdress" runat="server"></asp:Label>
        </td></tr>
        <tr><td><asp:Label ID="Label7" runat="server" Text="Detail:"></asp:Label></td>
        <td>
            <asp:Label ID="lbldetail" runat="server"></asp:Label>
        </td></tr>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button2" runat="server" Text="Accept" onclick="Button1_Click" />
        </td></tr>

    </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <table align="center" width="500" height="300" class="table" style="width:700px;">
            <tr><td>       <asp:Label ID="Label8" runat="server" Text="Sorry!! Notification already accepted.... Try another one.."></asp:Label>
     </td></tr>
        </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
