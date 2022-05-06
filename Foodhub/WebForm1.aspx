<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Foodhub.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="charityid" HeaderText="charityid" 
                    InsertVisible="False" ReadOnly="True" SortExpression="charityid" />
                <asp:BoundField DataField="charityname" HeaderText="charityname" 
                    SortExpression="charityname" />
                <asp:BoundField DataField="charitytype" HeaderText="charitytype" 
                    SortExpression="charitytype" />
                <asp:BoundField DataField="contact" HeaderText="contact" 
                    SortExpression="contact" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" 
                    SortExpression="pincode" />
                <asp:BoundField DataField="members" HeaderText="members" 
                    SortExpression="members" />
                <asp:BoundField DataField="incharge" HeaderText="incharge" 
                    SortExpression="incharge" />
                <asp:BoundField DataField="details" HeaderText="details" 
                    SortExpression="details" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="confirm" HeaderText="confirm" 
                    SortExpression="confirm" />
                <asp:BoundField DataField="charitycertifi" HeaderText="charitycertifi" 
                    SortExpression="charitycertifi" />
                <asp:BoundField DataField="charitystatus" HeaderText="charitystatus" 
                    SortExpression="charitystatus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:foodhubConnectionString %>" 
            SelectCommand="SELECT * FROM [charitydetail]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
