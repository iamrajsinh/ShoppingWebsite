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


                int Quantity = Convert.ToInt32(tbQuantity.Text);


                SqlCommand cmd2 = new SqlCommand("insert into tblProductQuantity(PID,Quantity) values(@PID,@Quantity)", con);
                cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd2.Parameters.AddWithValue("@Quantity", Convert.ToInt32(Quantity));
                cmd2.ExecuteNonQuery();

                if (fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + tbProductName.Text.ToString().Trim() + "01" + Extention);

                    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd3.Parameters.AddWithValue("@Name", tbProductName.Text.ToString().Trim() + "01");
                    cmd3.Parameters.AddWithValue("@Extention", Extention);
                    cmd3.ExecuteNonQuery();
                }
                //2nd fileupload
                if (fuImg02.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg02.PostedFile.FileName);
                    fuImg02.SaveAs(SavePath + "\\" + tbProductName.Text.ToString().Trim() + "02" + Extention);

                    //SqlCommand cmd4 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                    SqlCommand cmd4 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd4.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd4.Parameters.AddWithValue("@Name", tbProductName.Text.ToString().Trim() + "02");
                    cmd4.Parameters.AddWithValue("@Extention", Extention);
                    cmd4.ExecuteNonQuery();
                }
                   
                //3rd file upload 
                if (fuImg03.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg03.PostedFile.FileName);
                    fuImg03.SaveAs(SavePath + "\\" + tbProductName.Text.ToString().Trim() + "03" + Extention);

                    //SqlCommand cmd5 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
                    SqlCommand cmd5 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd5.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd5.Parameters.AddWithValue("@Name", tbProductName.Text.ToString().Trim() + "03");
                    cmd5.Parameters.AddWithValue("@Extention", Extention);
                    cmd5.ExecuteNonQuery();


                    tbProductName.Text = String.Empty;
                    tbPrice.Text = String.Empty;
                    tbsellPrice.Text = String.Empty;
                    tbQuantity.Text = String.Empty;
                    tbDescription.Text = String.Empty;
                    tbPDetail.Text = String.Empty;



                    Response.Redirect("AddProducts.aspx");

                }
                

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