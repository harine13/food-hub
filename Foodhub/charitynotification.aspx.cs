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
    public partial class charitynotification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {
            displaynotification();
        }
        public void displaynotification()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select notificationid id,donorid DonorId,donorname DonorName,contact Contact,notificationdata Details from  foodnotification order by notificationid desc ";


            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();




        }
       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Acceptbutton_click") return;
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("charityacceptpage.aspx?noteid=" + id.ToString());

           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}