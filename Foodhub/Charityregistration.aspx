<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Charityregistration.aspx.cs" Inherits="Foodhub.Charityregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />


<table cellpadding="20" cellspacing="20" align="center" class="table" style="width:700px;">
    <tr><td colspan="3" align="center">
        <asp:Label ID="Label3" runat="server" Text="Charity Registration" 
            Font-Bold="True" Font-Names="Algerian" ForeColor="#660033"></asp:Label></td>
        </tr>
            
    <tr><td><asp:Label ID="Label1" runat="server" Text="Charity Name:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtcharityame" runat="server" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtcharityame" ErrorMessage="Please enter charity name" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td><asp:Label ID="Label2" runat="server" Text="Type:" ></asp:Label></td>
        <td class="style1">
            <asp:RadioButtonList ID="rbltype" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Oldage Home</asp:ListItem>
                <asp:ListItem>Orphanage</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="rbltype" ErrorMessage="Please select type" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td></tr>

        <tr><td><asp:Label ID="Label8" runat="server" Text="Contact:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="Please enter contact" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td></tr>
            <tr><td><asp:Label ID="Label9" runat="server" Text="E-Mail:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Please enter email" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td></tr>    
          <tr><td><asp:Label ID="Label12" runat="server" Text="Address:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Please enter address" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
          <tr><td><asp:Label ID="Label13" runat="server" Text="Pincode:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="Please enter pincode" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
         <tr><td><asp:Label ID="Label4" runat="server" Text="Members in a Home:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtmembers" runat="server" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtmembers" ErrorMessage="Please enter members" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
             <tr><td><asp:Label ID="Label5" runat="server" Text="Incharge Name:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtincharge" runat="server" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtincharge" ErrorMessage="Please enter incharge" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
                 </td></tr>
   <tr><td><asp:Label ID="Label6" runat="server" Text="Details:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtdetail" ErrorMessage="Please enter detail" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
    <tr><td><asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Please enter password" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
    <tr><td><asp:Label ID="Label11" runat="server" Text="Confirm Password:"></asp:Label></td>
        <td class="style1">
            <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="txtconfirm" ErrorMessage="Please enter confirm password" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpassword" ControlToValidate="txtconfirm" 
                ErrorMessage="Password Mismatch" ForeColor="#CC3300"></asp:CompareValidator>
        </td></tr>
   
   <tr><td><asp:Label ID="Label7" runat="server" Text="Registration certificate:"></asp:Label></td>
        <td class="style1">
            <asp:FileUpload ID="fileregistration" runat="server"  CssClass="form-control"/></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="fileregistration" ErrorMessage="Please select certificate" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
              </td></tr>
       <tr><td colspan="2" align="center">
           <asp:Button ID="Button1" runat="server" Text="Register" 
               onclick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
           </td><td align="center">
               &nbsp;</td></tr>
    
  
</table>

<br /><br /><br /><br />

</asp:Content>
