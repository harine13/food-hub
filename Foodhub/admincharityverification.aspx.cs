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
    public partial class admincharityverification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {
           /* con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select charityid,charityname from charitydetail";
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            ddlcharity.DataSource = ds.Tables[0];
            ddlcharity.DataBind();
            ddlcharity.DataTextField = "charityname";
            ddlcharity.DataValueField = "charityid";
            ddlcharity.DataBind();*/
            MultiView1.ActiveViewIndex = -1;
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandText = "update charitydetail set charitystatus=@status where charityid=@id";

            cmd1.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue.ToString());
            cmd1.Parameters.AddWithValue("@id",Convert.ToInt32(ddlcharity.SelectedValue ));


            int i = cmd1.ExecuteNonQuery();
            if (i > 0)
            {
                Interaction.MsgBox("Status Updated Successfully!!!");

            }
            else
            {
                Interaction.MsgBox("Error in updation.. ..");
            }
           
        }



        protected void ddlcharity_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

            con.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "select *from charitydetail where charityid=@id";

            cmd2.Parameters.AddWithValue("@id", Convert.ToInt32(ddlcharity .SelectedValue));
            SqlDataReader rs;
            rs = cmd2.ExecuteReader();
            if (rs.Read())
            {
                lblcharitytype.Text = rs.GetValue(2).ToString();
                lblcontact.Text = rs.GetValue(3).ToString();
                lblemail.Text = rs.GetValue(4).ToString();
                lbladdress.Text = rs.GetValue(5).ToString();
                lblpincode.Text = rs.GetValue(6).ToString();
                lblmembers.Text = rs.GetValue(7).ToString();
                lblincharge.Text = rs.GetValue(8).ToString();
                lbldetail.Text = rs.GetValue(9).ToString();

                Image1.ImageUrl = "~/certificate/" + rs.GetValue(12).ToString();

            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}