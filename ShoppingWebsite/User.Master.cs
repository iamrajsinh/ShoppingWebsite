using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingWebsite
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                btnLogout.Visible = true;
                //btnLogin.Visible = false;
                //lblSuccess.Text = " Hello <b>" + Session["Username"].ToString() + "</b>";
                //Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
            }
            else
            {

                //Response.Redirect("SignIn.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;

            Response.Redirect("Default.aspx");

        }
    }
}