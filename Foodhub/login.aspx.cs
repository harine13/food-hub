using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.VisualBasic;

namespace Foodhub
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username, pass, naviurl = "";
            username = txtemail.Text.ToString();
            pass = txtpassword.Text.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            if (rblcategory.SelectedIndex == 0)
            {
                cmd.CommandText = "select *from donordetail where email=@email and password=@pass";
                naviurl = "donorsearch.aspx";
                Session["type"] = "donor";

            }
            else if (rblcategory.SelectedIndex == 1)
            {
                cmd.CommandText = "select *from charitydetail where email=@email and password=@pass and charitystatus=@status";
                cmd.Parameters.AddWithValue("@status", "Approved");
                naviurl = "charitynotification.aspx";
                Session["type"] = "charity";

            }
            else if (rblcategory.SelectedIndex == 2)
            {
                Interaction.MsgBox("correct");
                Response.Redirect("login.aspx");
                Session["type"] = "public";

            }
            cmd.Parameters.AddWithValue("@email", username);
            cmd.Parameters.AddWithValue("@pass", pass);
            SqlDataReader rs;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                Session["userid"] = rs.GetValue(0).ToString();
                Session["username"] = rs.GetValue(0).ToString();

                Response.Redirect(naviurl);

            }
            else
            {
                Interaction.MsgBox("Invalid username or password!!!");
            }
            clear();
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            txtemail.Text = "";
            txtpassword.Text = "";
            rblcategory.SelectedIndex = -1;

        }
    }
}