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
    public partial class RecoverPassword : System.Web.UI.Page
    {
        String GUIDvalue;
        int Uid;
        DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
            {
                GUIDvalue = Request.QueryString["id"];

                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("Select * from ForgotPass where Id=@Id", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Oops! It looks like your password reset link has been expired or invalid, please try again.";

                    }

                }
                else
                {
                    //Response.Redirect("~/Default.aspx");
                }

            }

            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    tbConfirmPass.Visible = true;
                    tbNewPass.Visible = true;

                    btnResetPass.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Oops! It looks like your password reset link has been expired or invalid, please try again.";
                    btnGoback.Visible = true;


                }

            }



        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {

            if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update tblUsers set Password=@p where Uid=@Uid", con);
                    cmd.Parameters.AddWithValue("@p", tbNewPass.Text);
                    cmd.Parameters.AddWithValue("@Uid", Uid);
                    cmd.ExecuteNonQuery();


                    SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid='" + Uid + "'", con);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully');  </script>");
                    Response.Redirect("~/SignIn.aspx");
                    
                }
            }


        }

        protected void btnGoback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ForgetPassword.aspx");

        }
    }
    
}