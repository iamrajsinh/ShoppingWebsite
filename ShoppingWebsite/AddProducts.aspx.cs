using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace ShoppingWebsite
{
    public partial class AddProducs : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                BindCompany();
                BindCategory();

                ddlSubCategory.Enabled = false;


                //BindGridview1();

            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("--- Select ---", "0"));

                }
            }
        }

        private void BindCompany()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCompanies", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCompany.DataSource = dt;
                    ddlCompany.DataTextField = "Name";
                    ddlCompany.DataValueField = "CompanyID";
                    ddlCompany.DataBind();
                    ddlCompany.Items.Insert(0, new ListItem("--- Select ---", "0"));

                }
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", tbProductName.Text);
                cmd.Parameters.AddWithValue("@PPrice", tbPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", tbsellPrice.Text);
                cmd.Parameters.AddWithValue("@PCompanyID", ddlCompany.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PDescription", tbDescription.Text);
                cmd.Parameters.AddWithValue("@PProductDetails", tbPDetail.Text);

                if (cbFD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }

                if (cb7Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@7DayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@7DayRet", 0.ToString());
                }
                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                if (con.State == ConnectionState.Closed) { con.Open(); }
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());
            }

        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

            ddlSubCategory.Enabled = true;
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("--- Select ---", "0"));

                }
            }
        }
    }
}