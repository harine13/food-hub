<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Foodhub.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table cellpadding="10" cellspacing="10" align="center" class="table" style="width:700px;">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label3" runat="server" Text="Login" 
            Font-Bold="True" Font-Names="Algerian" ForeColor="#660033"></asp:Label>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="E-Mail:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Please enter email" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Please enter password" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:RadioButtonList ID="rblcategory" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Donor</asp:ListItem>
                    <asp:ListItem>Charity people</asp:ListItem>
                    <asp:ListItem>Public</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td align="center">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="rblcategory" ErrorMessage="Please select category" 
                ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Sign In" 
               onclick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
