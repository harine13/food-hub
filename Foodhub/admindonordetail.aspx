<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="admindonordetail.aspx.cs" Inherits="Foodhub.admindonordetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table cellpadding="10" cellspacing="10" align="center" class="table" style="width:900px;" >
  
<tr><td align="center">
    <asp:Label ID="Label1" runat="server" Text="Donor Detail" Font-Bold="True" 
        Font-Names="Algerian" Font-Size="Medium" ForeColor="Maroon"></asp:Label></td></tr>
    <tr><td align="center">
    
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="20" CellSpacing="5" 
            DataSourceID="SqlDataSource1" Height="480px" Width="283px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Donorname" HeaderText="Donorname" 
                    SortExpression="Donorname" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" 
                    SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                    SortExpression="Pincode" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:foodhubConnectionString %>" 
            SelectCommand="select donorid ID,donorname Donorname,contact Contact,email Email,address Address,pincode Pincode from donordetail">
        </asp:SqlDataSource>
    
    
    </td></tr>
</table>
</asp:Content>
