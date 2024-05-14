using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace Lab11
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string con_str = ConfigurationManager.ConnectionStrings["FoodAiConnectionString2"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM FoodAi WHERE emaill LIKE '%' + @searchEmail + '%'";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("searchEmail", txtSearchEmail.Text);
            GridView1.Visible = true;
            GridView1.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // Email format validation using regex
            string emailRegexPattern = @"^\w+([.-]?\w+)@\w+([.-]?\w+)(.\w{2,3})+$";
            Regex emailRegex = new Regex(emailRegexPattern);

            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            // Use single quotes for string values in the RowFilter
            string emailFilter = "emaill = '" + txtEmail.Text + "'";
            dv.RowFilter = emailFilter;
            
            
                if (dv.Count > 0)
                {
                // email exists, display an error message
                lblInsertStatus.Text = "Email already exists";
                }
                else
                {
                    // Check for valid email format
                    if (!emailRegex.IsMatch(txtEmail.Text))
                    {
                    // Invalid email format, display an error message
                    lblInsertStatus.Text = "Invalid email format";
                    }
                    else
                    {
                        // Insert the record 
                        SqlDataSource1.Insert();
                        lblInsertStatus.Text = "Insert done successfully.";
                        GridView2.DataBind();
                        ClearFields(); // Optionally, clear the input fields after successful insertion
                    }
                }
            
            

            
        }
        private void ClearFields()
        {
            // Clear the input fields
            txtEmail.Text = "";
            txtName.Text = "";
            txtPassword.Text = "";


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["FoodAiConnectionString2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string updateSql = "UPDATE FoodAi SET name = @name, password = @password WHERE emaill = @emaillll";
                using (SqlCommand cmd = new SqlCommand(updateSql, con))
                {
                    cmd.Parameters.AddWithValue("@name", txtUpdateName.Text);
                    cmd.Parameters.AddWithValue("@password", txtUpdatePassword.Text);
                    cmd.Parameters.AddWithValue("@emaill", txtUpdateEmail.Text);
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        
                        lblUpdateStatus.Text = "Record updated successfully.";
                        GridView2.DataBind();
                    }
                    else
                    {
                        lblUpdateStatus.Text = "No record found with the provided email.";
                    }
                }
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["FoodAiConnectionString2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string deleteSql = "DELETE FROM FoodAi WHERE emaill = @emaill";
                using (SqlCommand cmd = new SqlCommand(deleteSql, con))
                {
                    cmd.Parameters.AddWithValue("@emaill", txtDeleteEmail.Text);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblDeleteStatus.Text = "Record deleted successfully.";
                        GridView2.DataBind();
                    }
                    else
                    {
                        lblDeleteStatus.Text = "No record found with the provided email.";
                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    
