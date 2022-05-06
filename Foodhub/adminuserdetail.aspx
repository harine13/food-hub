<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="adminuserdetail.aspx.cs" Inherits="Foodhub.adminuserdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table cellpadding="10" cellspacing="10" align="center" class="table" style="width:700px;">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="Public User Information" 
                    Font-Bold="True" Font-Names="Algerian" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="3" 
            DataSourceID="SqlDataSource1" Height="454px" Width="245px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="PublicName" HeaderText="PublicName" 
                    SortExpression="PublicName" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" 
                    SortExpression="Contact" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                    SortExpression="Pincode" />
                        <asp:BoundField DataField="Details" HeaderText="Details" 
                            SortExpression="Details" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:foodhubConnectionString %>" 
            SelectCommand="select publicid Id,publicname PublicName,contact Contact,email Email,address Address,pincode Pincode,details Details from publicdetail
"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
