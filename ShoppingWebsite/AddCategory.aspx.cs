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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryRepeater();
        }

        private void BindCategoryRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCategory", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCategory.DataSource = dt;
                        rptrCategory.DataBind();
                    }
                }
            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + tbCategory.Text + "')", con);
                    cmd.ExecuteNonQuery();


                    tbCategory.Text = string.Empty;

                    lblMsg.Text = "Category added successfully";

                    con.Close();

                    //lblMsg.ForeColor = System.Drawing.Color.Green;
                    tbCategory.Focus();


                }
            
        }
    }
}