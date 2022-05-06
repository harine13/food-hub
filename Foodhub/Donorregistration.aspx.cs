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
    public partial class Donorregistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into donordetail values(@donorname,@contact,@email,@address,@pincode,@password,@confirm)";
            cmd.Parameters.AddWithValue("@donorname", txtdonorname.Text.ToString());
            cmd.Parameters.AddWithValue("@contact", Convert.ToInt64(txtcontact.Text));
            cmd.Parameters.AddWithValue("@email", txtemail.Text.ToString());
            cmd.Parameters.AddWithValue("@address", txtaddress.Text.ToString());
            cmd.Parameters.AddWithValue("@pincode", Convert.ToInt32(txtpincode.Text));
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
            cmd.Parameters.AddWithValue("@confirm", txtconfirm.Text.ToString());
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Interaction.MsgBox("Regitered successfully!!");
            }
            else
            {
                Interaction.MsgBox("Sorry!Error in storing...");
            }
            clear();

        }
        public void clear()
        {
            txtaddress.Text = "";
            txtconfirm.Text = "";
            txtcontact.Text = "";
            txtdonorname.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtpincode.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();

        }
    }
}