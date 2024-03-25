using MP2_IT114L.App_Code.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP2_IT114L
{
    public partial class Login_Client : Page
    {
        protected void LogAccount_Click(object sender, EventArgs e)
        {
            string email = TB_email.Text;
            string password = TB_password.Text;
            string type = "Customer";

            UserRepository userRepository = new UserRepository();

            if (userRepository.CheckUser(email, password, type))
            {
                if (userRepository.CheckUser(email, password, "Admin"))
                {
                    Response.Write("Invalid email or password.");
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }
            }
            else
            {
                Response.Write("Invalid email or password.");
            }
        }
    }
}
