using MP2_IT114L.App_Code.Users;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP2_IT114L
{
    public partial class Signup_Client2 : System.Web.UI.Page
    {
        protected void CreateAccount_Click(object sender, EventArgs e)
        {
            string name = TB_username.Text;
            string email = TB_email.Text;
            string password = TB_password.Text;
            string type = "Customer";

            UserRepository userRepository = new UserRepository();
            if (userRepository.CheckExistingUser(email))
            {
                Response.Write("User with this email already exists. Please use a different email.");
            }
            else
            {
                userRepository.CreateUser(name, email, password, type);
                Response.Redirect("Login-Client.aspx");
            }
        }
    }
}