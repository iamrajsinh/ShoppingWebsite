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


                    Clr();
                    con.Close();
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    lblMsg.Text = "Registration Successful! CyberShop Welcomes You";



                }
                
            }




        }


        private bool isformvalid()
        {
            if (tbUsername.Text == "")
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Please enter your username.";
                tbUsername.Focus();
                string Password = tbPassword.Text;
                tbPassword.Attributes.Add("value", Password);

                string CPassword = tbCPassword.Text;
                tbCPassword.Attributes.Add("value", CPassword);

                return false;
            }
            else if (tbPassword.Text == "")
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Please enter your password.";
                ClrPS();
                tbPassword.Focus();
                return false;
            }
            else if (tbPassword.Text != tbCPassword.Text)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Password doesn't match, please enter matching passwords";
                ClrPS();
                tbCPassword.Focus();

                return false;
            }
            else if (tbEmail.Text == "")
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Please enter your email.";
                tbEmail.Focus();
                string Password = tbPassword.Text;
                tbPassword.Attributes.Add("value", Password);

                string CPassword = tbCPassword.Text;
                tbCPassword.Attributes.Add("value", CPassword);
                return false;
            }
            else if (tbName.Text == "")
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Please enter your name.";
                tbName.Focus();
                string Password = tbPassword.Text;
                tbPassword.Attributes.Add("value", Password);

                string CPassword = tbCPassword.Text;
                tbCPassword.Attributes.Add("value", CPassword);
                return false;
            }


            return true;
        }
        private void Clr()
        {
            tbUsername.Text = string.Empty;
            tbPassword.Text = string.Empty;
            tbCPassword.Text = string.Empty;
            tbEmail.Text = string.Empty;
            tbName.Text = string.Empty;
        }
        private void ClrPS()
        {

            tbPassword.Text = string.Empty;
        }




    }
}