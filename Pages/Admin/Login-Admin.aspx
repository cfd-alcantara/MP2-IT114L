<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login-Admin.aspx.cs" Inherits="MP2_IT114L.Login_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Admin Page</h1>
        <div>
            <asp:TextBox ID="TB_email" runat="server" placeholder="Enter email"></asp:TextBox> <br />
            <asp:TextBox ID="TB_password" textmode="Password" runat="server" placeholder="Enter password"></asp:TextBox> <br />
            <asp:Button ID="LogAccount" runat="server" Text="Login Account" OnClientClick="return validateForm()" OnClick="LogAccount_Click" /> <br />
            
            <a href="Signup-Admin.aspx">Sign up for Admin</a>
        </div>
    </form>
</body>
</html>
