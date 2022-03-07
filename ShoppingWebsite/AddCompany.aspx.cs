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
    public partial class AddCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCompanyRepeater();
        }

        private void BindCompanyRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCompanies", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCompanies.DataSource = dt;
                        rptrCompanies.DataBind();
                    }
                }
            }
        }

        protected void btnAddCompany_Click(object sender, EventArgs e)
        {
            if (tbCompany.Text != null && tbCompany.Text != "" && tbCompany.Text != string.Empty)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblCompanies(Name) Values('" + tbCompany.Text + "')", con);
                    cmd.ExecuteNonQuery();

                   
                    tbCompany.Text = string.Empty;

                    lblMsg.Text = "Company added successfully";

                    con.Close();
                    
                    //lblMsg.ForeColor = System.Drawing.Color.Green;
                    tbCompany.Focus();


                }
            }
        }

       
    }
}