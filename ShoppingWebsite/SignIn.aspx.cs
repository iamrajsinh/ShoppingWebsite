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



            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                {
                    tbUsername.Text = Request.Cookies["UNAME"].Value;
                    tbPassword.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;

                }
            }

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

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = tbUsername.Text;
                        Response.Cookies["UPWD"].Value = tbPassword.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddSeconds(30);

                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddSeconds(30);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if(Utype == "User")
                    {
                        Session["Username"] = tbUsername.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if (Utype == "Admin")
                    {
                        Session["Username"] = tbUsername.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }

                }
                else
                {
                    lblError.Text = "Invalid username & password";
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
