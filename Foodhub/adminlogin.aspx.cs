using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
namespace Foodhub
{
    public partial class adminhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username, pass, naviurl = "";
            username = txtemail.Text.ToString();
            pass = txtpassword.Text.ToString();
            if (username.Equals("admin") && pass.Equals("admin@123"))
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Interaction.MsgBox("Invalid username or password!!");
            }
            txtemail.Text = "";
            txtpassword.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtemail.Text = "";
            txtpassword.Text = "";

        }
    }
}