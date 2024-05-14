using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

namespace Lab11
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // Email format validation using regex
            string emailRegexPattern = @"^\w+([.-]?\w+)@\w+([.-]?\w+)(.\w{2,3})+$";
            Regex emailRegex = new Regex(emailRegexPattern);

            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            // Use single quotes for string values in the RowFilter
            string emailFilter = "emaill = '" + EmailText.Text + "'";

            // Check for email existence
            dv.RowFilter = emailFilter;
            if (PasswordText == PassText)
            {
                if (dv.Count > 0)
                {
                    // email exists, display an error message
                    Error_email.Text = "Email already exists";
                }
                else
                {
                    // Check for valid email format
                    if (!emailRegex.IsMatch(EmailText.Text))
                    {
                        // Invalid email format, display an error message
                        Error_email.Text = "Invalid email format";
                    }
                    else
                    {
                        // Insert the record 
                        SqlDataSource1.Insert();
                        Error_successfully.Text = "successfully!";
                        ClearFields(); // Optionally, clear the input fields after successful insertion
                    }
                }
            }
            else
            {
                Error_successfully.Text = "Password not match";
            }
        }
    
        private void ClearFields()
        {
            // Clear the input fields
            NameText.Text = "";
            EmailText.Text = "";
            PasswordText.Text = "";
            PassText.Text = "";

        }
    }
}

      

 