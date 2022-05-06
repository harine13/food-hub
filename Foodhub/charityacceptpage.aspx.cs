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
    public partial class charityacceptpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (Session["userid"] != null)
            {
                Response.Redirect("login.aspx");
            }*/

            
            if (Session["type"].ToString ().Equals("charity") )
            {
  
            string notificationid = Request.QueryString["noteid"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select *from foodnotification where notificationid=@id and status='Initial Notification'";
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(notificationid));
            SqlDataReader rs;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                // View1.Visible = true;
                //View2.Visible = false;
                MultiView1.ActiveViewIndex = 0;

                lbldonorid.Text = rs.GetValue(1).ToString();
                lbldonorname.Text = rs.GetValue(2).ToString();
                lblcontact.Text = rs.GetValue(3).ToString();
                lblemail.Text = rs.GetValue(4).ToString();
                lbladdress.Text = rs.GetValue(5).ToString();
                lbldetail.Text = rs.GetValue(6).ToString();


            }
            else
            {
                // View1.Visible = false;
                //View2.Visible = true;
                MultiView1.ActiveViewIndex = 1;

            }

           }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string notificationid = Request.QueryString["noteid"].ToString();
            int receiverid = Convert.ToInt32(Session["userid"]);
            string receivername = Session["username"].ToString();
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandText = "update foodnotification set status='Accepted',receiverid=@receiverid,receivername=@receivername where notificationid=@noteid";
            cmd1.Parameters.AddWithValue("@receiverid", receiverid);
            cmd1.Parameters.AddWithValue("@receivername", receivername);
            cmd1.Parameters.AddWithValue("@noteid", Convert.ToInt32(notificationid));
            int i = cmd1.ExecuteNonQuery();
            if (i > 0)
            {
                Interaction.MsgBox("Accepted Successfully!!!");

            }
            else
            {
                Interaction.MsgBox("Error in accept.. try again..");
            }
            
        }
    }
}