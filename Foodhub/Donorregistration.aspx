<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Donorregistration.aspx.cs" Inherits="Foodhub.Donorregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table cellpadding="10" cellspacing="10" align="center" class="table" style="width:700px;">
    <tr><td colspan="3" align="center">
        <asp:Label ID="Label3" runat="server" Text="Donor Registration" 
            Font-Bold="True" Font-Names="Algerian" ForeColor="#660033"></asp:Label></td></tr>
    <tr><td><asp:Label ID="Label1" runat="server" Text="Donor Name:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtdonorname" runat="server" CssClass="form-control"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtdonorname" ErrorMessage="Please enter donor name" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>
  
   <tr><td><asp:Label ID="Label9" runat="server" Text="E-Mail:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Please enter email" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>   
        <tr><td><asp:Label ID="Label8" runat="server" Text="Contact:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="Please enter contact" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>
          <tr><td><asp:Label ID="Label12" runat="server" Text="Address:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtaddress" ErrorMessage="Please enter address" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>
          <tr><td><asp:Label ID="Label13" runat="server" Text="Pincode:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="Please enter pincode" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>
        
        <tr><td><asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Please enter password" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td></tr>
    <tr><td><asp:Label ID="Label11" runat="server" Text="Confirm Password:"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtconfirm" ErrorMessage="Please enter confirm password" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpassword" ControlToValidate="txtconfirm" 
                ErrorMessage="Password mismatch" ForeColor="#CC3300"></asp:CompareValidator>
        </td></tr>
   
       <tr><td colspan="3" align="center">
           <asp:Button ID="Button1" runat="server" Text="Register" 
               onclick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
           </td></tr>
    
  
</table>
</asp:Content>
