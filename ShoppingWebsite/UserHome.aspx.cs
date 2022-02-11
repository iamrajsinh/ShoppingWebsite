using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingWebsite
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                btnLogout.Visible = true;
                //btnLogin.Visible = false;
                lblSuccess.Text = " Hello <b>" + Session["Username"].ToString() + "</b>";
                //Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
            }
            else
            {
                
               Response.Redirect("SignIn.aspx");
            }

        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/SignIn.aspx");
            Session["Username"] = null;
        }
    }
}