<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup-Client.aspx.cs" Inherits="MP2_IT114L.Signup_Client2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TB_username.ClientID %>').value.trim();
            var email = document.getElementById('<%= TB_email.ClientID %>').value.trim();
            var password = document.getElementById('<%= TB_password.ClientID %>').value.trim();
            var password2 = document.getElementById('<%= TB_password2.ClientID %>').value.trim();

            document.getElementById('errorUsername').innerText = '';
            document.getElementById('errorEmail').innerText = '';
            document.getElementById('errorPassword').innerText = '';
            document.getElementById('errorPassword2').innerText = '';

            if (username === '') {
                document.getElementById('errorUsername').innerText = 'Username is required.';
                return false;
            }
            if (email === '') {
                document.getElementById('errorEmail').innerText = 'Email is required.';
                return false;
            }
            if (password === '') {
                document.getElementById('errorPassword').innerText = 'Password is required.';
                return false;
            }
            if (password2 === '') {
                document.getElementById('errorPassword2').innerText = 'Please re-enter your password.';
                return false;
            }

            if (email.indexOf('@') === -1) {
                document.getElementById('errorEmail').innerText = 'Invalid email format.';
                return false;
            }

            if (password !== password2) {
                document.getElementById('errorPassword2').innerText = 'Passwords do not match.';
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Signup Page</h1>
    <div>
        <asp:TextBox ID="TB_username" runat="server" placeholder="Enter username"></asp:TextBox> <span id="errorUsername" style="color: red;"></span><br />
        <asp:TextBox ID="TB_email" runat="server" placeholder="Enter email"></asp:TextBox> <span id="errorEmail" style="color: red;"></span><br />
        <asp:TextBox ID="TB_password" textmode="Password" runat="server" placeholder="Enter password"></asp:TextBox> <span id="errorPassword" style="color: red;"></span><br />
        <asp:TextBox ID="TB_password2" textmode="Password" runat="server" placeholder="Renter password"></asp:TextBox> <span id="errorPassword2" style="color: red;"></span><br />
        <asp:Button ID="CreateAccount" runat="server" Text="Create Account" OnClientClick="return validateForm()" OnClick="CreateAccount_Click" /> <br />        
        <asp:Label ID="LblAccountId" runat="server" Text=""></asp:Label>

        <a href="Login-Client.aspx">Back to Login</a>
    </div>
</form>
</body>
</html>
