<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MP2_IT114L.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <a href="Index.aspx">Home</a>
            <a href="UserPage-Profile.aspx">Profile</a>
        </nav>
        <h1>Home Page</h1>
        <div>
            <asp:TextBox ID="TB_RecordName" runat="server" placeholder="Enter Record Name"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DL_Genre" runat="server">
                <asp:ListItem Enabled="true" Text="Select Genre" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Rock" Value="1"></asp:ListItem>
                <asp:ListItem Text="Pop" Value="2"></asp:ListItem>
                <asp:ListItem Text="RNB" Value="3"></asp:ListItem>
                <asp:ListItem Text="Jazz" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TB_Price" runat="server" placeholder="Enter Price"></asp:TextBox>
            <br />
            <asp:TextBox ID="TB_Stock" runat="server" placeholder="Enter Stock"></asp:TextBox>
            <br />
            <asp:TextBox ID="TB_Description" runat="server" placeholder="Enter Description"></asp:TextBox>
            <br />
            <asp:Button ID="addRecord" runat="server" Text="Add Record" OnClick="AddRecord_Click" />
            <br />

            <asp:TextBox ID="TB_DEL_RecordName" runat="server" placeholder="Enter Record Name to Delete"></asp:TextBox>
            <br />
            <asp:Button ID="deleteRecord" runat="server" Text="Add Record" OnClick="DeleteRecord_Click" />
            <br />

            <asp:TextBox ID="TB_ProductId" runat="server" placeholder="Enter Record's Id To Add"></asp:TextBox>
            <br />
            <asp:TextBox ID="TB_Quantity" runat="server" placeholder="Enter Quantity To Add"></asp:TextBox>
            <br />
            <asp:Button ID="addToCart" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" />
            <br />

        </div>

        <div>
            <br />
            <% foreach (var currentProduct in recordRepository)%>
            <% { %>
            <%--<% if (currentPost.PostedBy == "joblipat") %>
            <% { %>--%>
            <p><% = currentProduct.ProductName %> </p>
            <p><% = currentProduct.ProductId %> </p>
            <%-- <% } %>--%>

            <% } %>
            <br />
        </div>
        <footer>@Lebron</footer>
    </form>
</body>
</html>
