using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ShoppingWebsite
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@username", tbUsername.Text);

                cmd.Parameters.AddWithValue("@pwd", tbPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Response.Redirect("UserHome.aspx");
                }


                clr();
                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
            }
        }

        private void clr()
        {

            tbPassword.Text = string.Empty;
            tbUsername.Text = string.Empty;
            tbUsername.Focus();


        }
    }
}
