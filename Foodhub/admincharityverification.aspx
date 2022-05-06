<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="admincharityverification.aspx.cs" Inherits="Foodhub.admincharityverification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table cellpadding="10" cellspacing="10" align="center" class="table" style="width:700px;">
   
    <tr><td colspan="2" align="center">
        <asp:Label ID="Label1" runat="server" Text="Charity Detail"></asp:Label></td></tr>
        <tr><td>Select Charity:</td><td>
            <asp:DropDownList ID="ddlcharity" runat="server" CssClass="form-control" 
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="charityname" 
                DataValueField="charityid" 
                onselectedindexchanged="ddlcharity_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:foodhubConnectionString %>" 
                SelectCommand="SELECT [charityid], [charityname] FROM [charitydetail]">
            </asp:SqlDataSource>
        </td></tr>
        <tr><td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="Show Detail" 
                onclick="Button1_Click" Visible="False" /></td></tr>
                 <tr><td colspan="2" >
   
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="View1" runat="server">
         <table cellpadding="10" cellspacing="10" align="center" class="table" style="width:700px;">
         <tr><td>
                    <asp:Label ID="Label2" runat="server" Text="Charity Type:"></asp:Label></td>
                   <td> <asp:Label ID="lblcharitytype" runat="server" Text="Label"></asp:Label></td>
                   <td rowspan="3">
                       <asp:Image ID="Image1" runat="server" Width="150" Height="150" /></td>
                   </tr>
                    
                <tr><td>
                    <asp:Label ID="Label3" runat="server" Text="Contact:"></asp:Label></td>
                    <td><asp:Label ID="lblcontact" runat="server" Text="Label"></asp:Label></td></tr>
                    
                <tr><td>
                    <asp:Label ID="Label4" runat="server" Text="E-Mail :"></asp:Label></td>
                   <td> <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td></tr>
                    
                <tr><td>
                    <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label></td>
                   <td> <asp:Label ID="lbladdress" runat="server" Text="Label"></asp:Label></td></tr>

                
                <tr><td>
                    <asp:Label ID="Label6" runat="server" Text="Pincode:"></asp:Label></td>
                   <td> <asp:Label ID="lblpincode" runat="server" Text="Label"></asp:Label></td></tr>
                
                <tr><td>
                    <asp:Label ID="Label7" runat="server" Text="Members:"></asp:Label></td>
                   <td> <asp:Label ID="lblmembers" runat="server" Text="Label"></asp:Label></td></tr>

                
                <tr><td>
                    <asp:Label ID="Label8" runat="server" Text="Incharge:"></asp:Label></td>
                   <td> <asp:Label ID="lblincharge" runat="server" Text="Label"></asp:Label></td></tr>

                
                <tr><td>
                    <asp:Label ID="Label9" runat="server" Text="Details:"></asp:Label></td>
                  <td>  <asp:Label ID="lbldetail" runat="server" Text="Label"></asp:Label></td></tr>

                
                <tr><td>
                    <asp:Label ID="Label10" runat="server" Text="Status:"></asp:Label></td>
                   <td> 
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                           RepeatDirection="Horizontal">
                           <asp:ListItem>Approved</asp:ListItem>
                           <asp:ListItem>Rejected</asp:ListItem>
                       </asp:RadioButtonList>
                    </td>
                    </tr>
                      <tr><td colspan="2" align="center">
                        <asp:Button ID="Button2" runat="server" Text="Update Staus" 
                              onclick="Button2_Click" /></td></tr>
                        </table>

         </asp:View>
     </asp:MultiView>
     </td></tr>
                



</table>
</asp:Content>
