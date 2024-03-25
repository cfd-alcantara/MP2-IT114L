using MP2_IT114L.App_Code.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP2_IT114L
{
    public partial class UserPage_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int accountId = Convert.ToInt32(Session["LoggedInUserId"]);
            if (accountId > 0)
            {
                UserProfile userProfile = new UserProfile();
                User userProfileModel = userProfile.GetUserProfile(accountId);
                LblName.Text = userProfileModel.Name;
                LblEmail.Text = userProfileModel.Email;
                LblPassword.Text = userProfileModel.Password; 
                LblType.Text = userProfileModel.Type;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
