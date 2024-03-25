<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage-Profile.aspx.cs" Inherits="MP2_IT114L.UserPage_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Profile</h1>
            <div>
                <label>Name: </label>
                <asp:Label ID="LblName" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <label>Email: </label>
                <asp:Label ID="LblEmail" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <label>Password: </label>
                <asp:Label ID="LblPassword" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <label>Type: </label>
                <asp:Label ID="LblType" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
