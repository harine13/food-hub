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
    public partial class Charityregistration : System.Web.UI.Page
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
            string na = fileregistration.FileName;
            string ex = System.IO.Path.GetExtension(na);

            if (ex.Equals(".jpg") || ex.Equals(".gif") || ex.Equals(".jpeg") || ex.Equals(".png") || ex.Equals(".bmp"))
            {
                string path = Server.MapPath("~/certificate/");

                fileregistration.SaveAs(path + na);



                cmd.CommandText = "insert into charitydetail values(@charityname,@charitytype,@contact,@email,@address,@pincode,@members,@incharge,@details,@password,@confirm,@charitycertifi,@charitystatus)";
                cmd.Parameters.AddWithValue("@charityname", txtcharityame.Text.ToString());
                cmd.Parameters.AddWithValue("@charitytype", rbltype.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@contact", Convert.ToInt64(txtcontact.Text));
                cmd.Parameters.AddWithValue("@email", txtemail.Text.ToString());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.ToString());
                cmd.Parameters.AddWithValue("@pincode", Convert.ToInt32(txtpincode.Text));
                cmd.Parameters.AddWithValue("@members", txtmembers.Text.ToString());
                cmd.Parameters.AddWithValue("@incharge", txtincharge.Text.ToString());
                cmd.Parameters.AddWithValue("@details", txtdetail.Text.ToString());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
                cmd.Parameters.AddWithValue("@confirm", txtconfirm.Text.ToString());
                cmd.Parameters.AddWithValue("@charitycertifi", na);
                cmd.Parameters.AddWithValue("@charitystatus", "register");
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Interaction.MsgBox("Registered successfully!!After admin approvel, you able to sign in..");
                }
                else
                {
                    Interaction.MsgBox("Sorry!Error in storing...");
                }
            }
            else
            {
                Interaction.MsgBox("You are able to upload image only");
            }
            clear();

        }
        public void clear()
        {
            txtaddress.Text = "";
            txtcharityame.Text = "";
            txtconfirm.Text = "";
            txtcontact.Text = "";
            txtdetail.Text = "";
            txtemail.Text = "";
            txtincharge.Text = "";
            txtmembers.Text = "";
            txtpassword.Text = "";
            txtpincode.Text = "";
            rbltype.SelectedIndex = -1;
            //fileregistration.PostedFile.FileName = "";

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}