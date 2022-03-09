﻿using System;
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
    public partial class Products : System.Web.UI.Page
    {

        public static String CS = ConfigurationManager.ConnectionStrings["ShoppingWebsiteDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                BindProductRepeater();
               

            }



        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                        //if (dt.Rows.Count <= 0)
                        //{
                        //    Label1.Text = "Sorry! Currently no products in this category.";
                        //}
                        //else
                        //{
                        //    Label1.Text = "Showing All Products";
                        //}
                    }
                }
            }
        }
    }
}