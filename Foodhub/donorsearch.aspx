<%@ Page Title="" Language="C#" MasterPageFile="~/Donormaster.Master" AutoEventWireup="true" CodeBehind="donorsearch.aspx.cs" Inherits="Foodhub.donorsearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center" cellpadding="10" cellspacing="10" class="table">

        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Algerian" 
                    ForeColor="#660033" Text="Searching"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label9" runat="server" Text="Pincode:"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Refresh" />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:Label ID="Label10" runat="server" Text="Charity Detail:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Height="200px" Width="968px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Public Detail:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Height="200px" Width="972px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr><td align="right">
            <asp:Label ID="Label11" runat="server" Text="Notification Data:"></asp:Label>
            </td><td>
                <asp:TextBox ID="txtnotification" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td></tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Send Notification " />
            </td>
        </tr>
    </table>
</asp:Content>
