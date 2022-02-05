using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ShoppingWebsite
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name) Values('" + tbUsername.Text + "','" + tbPassword.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successful! CyberShop Welcomes You');  </script>");
                    clr();
                    con.Close();
                    

                }
                
            }
            

        }


        private bool isformvalid()
        {
            if (tbUsername.Text == "")
            {
                Response.Write("<script> alert('Please enter your username.');  </script>");
                tbUsername.Focus();

                return false;
            }
            else if (tbPassword.Text == "")
            {
                Response.Write("<script> alert('Please enter your password.');  </script>");
                tbPassword.Focus();
                return false;
            }
            else if (tbPassword.Text != tbCPassword.Text)
            {
                Response.Write("<script> alert('Please enter matching password for conformation.');  </script>");
                tbCPassword.Focus();
                return false;
            }
            else if (tbEmail.Text == "")
            {
                Response.Write("<script> alert('Please enter your email.');  </script>");
                tbEmail.Focus();
                return false;
            }
            else if (tbName.Text == "")
            {
                Response.Write("<script> alert('Please enter your name');  </script>");
                tbName.Focus();
                return false;
            }


            return true;
        }
        private void clr()
        {
            tbUsername.Text = string.Empty;
            tbPassword.Text = string.Empty;
            tbCPassword.Text = string.Empty;
            tbEmail.Text = string.Empty;
            tbName.Text = string.Empty;
        }
    }
}