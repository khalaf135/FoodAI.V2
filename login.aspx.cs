using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab11.Recepies
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(password.Text=="admin" && username.Text == "Admin")
            {
                Response.Redirect("Admin.aspx");
            }
            else { err.Text = "Wrong Password or Username"; }
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}