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
using System.Net.Mail;

namespace Foodhub
{
    public partial class donorsearch : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString);

        protected string[] maildata
        {
            get { return (string[])ViewState["maildata"]; }
            set { ViewState["maildata"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                displayGrid();
        }
        public void displayGrid()
        {
            string[] email = new string[20];
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select charityid ID,charityname Charityname,charitytype Type,email EMail,address Address,pincode Pincode,members Members,details Details from charitydetail where charitystatus='Approved'";
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            SqlDataReader rs;
            rs = cmd.ExecuteReader();
            int a = 0;
            while (rs.Read())
            {
                // Interaction.MsgBox("hai");
                email[a] = rs.GetValue(3).ToString();
                a++;
            }
            //Interaction.MsgBox(email.Length.ToString());
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandText = "select publicid ID,publicname PublicName,email EMail,address Address,pincode Pincode,details Details from publicdetail";
            SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            GridView2.DataSource = ds1.Tables[0];
            GridView2.DataBind();

            SqlDataReader rs1;
            rs1 = cmd1.ExecuteReader();

            while (rs1.Read())
            {
                email[a] = rs1.GetValue(2).ToString();
                a++;
            }



            maildata = email;



            /*foreach (string sin in email)
           {
               Interaction.MsgBox(sin);
           }*/
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
             string[] email = new string[20];

            con.Close();
            con.Open();
            SqlCommand cmd3 = new SqlCommand();
            cmd3.Connection = con;
            cmd3.CommandText = "select charityid ID,charityname Charityname,charitytype Type,email EMail,address Address,pincode Pincode,members Members,details Details from charitydetail where pincode=@pincode and charitystatus='Approved'";
            cmd3.Parameters.AddWithValue("@pincode", Convert.ToInt64(txtpincode.Text));
            SqlDataAdapter adp3 = new SqlDataAdapter(cmd3);
            DataSet ds3 = new DataSet();
            adp3.Fill(ds3);
            GridView1.DataSource = ds3.Tables[0];
            GridView1.DataBind();

           // Array.Clear(email, 0, email.Length);
            ViewState["maildata"] = null;
            SqlDataReader rs;
            rs = cmd3.ExecuteReader();
            int a = 0;
            while (rs.Read())
            {
                email[a] = rs.GetValue(3).ToString();
                a++;
            }
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "select publicid ID,publicname PublicName,email EMail,address Address,pincode Pincode,details Details from publicdetail where pincode=@pincode";
            cmd2.Parameters.AddWithValue("@pincode", Convert.ToInt64(txtpincode.Text));
           
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            GridView2.DataSource = ds2.Tables[0];
            GridView2.DataBind();

            SqlDataReader rs1;
            rs1 = cmd2.ExecuteReader();

            while (rs1.Read())
            {
                email[a] = rs1.GetValue(2).ToString();
                a++;
            }

            maildata = email;

            /*string[] tempArray = maildata;
            List<string> tempListColors = new List<string>();
            foreach (string color in tempArray)
            {
                if (!string.IsNullOrEmpty(color))
                    tempListColors.Add(color);
            }
            tempArray = tempListColors.ToArray();

            foreach (string s in tempArray)
            {
                Interaction.MsgBox(s);
            }*/
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            displayGrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             int donorid;
            string donorname="",contact="",email="",address="";

            donorid = Convert.ToInt32(Session["userid"]);
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "select donorname,contact,email,address from donordetail where donorid=@donorid";
            cmd2.Parameters.AddWithValue("@donorid", donorid);
            SqlDataReader rs;
            rs = cmd2.ExecuteReader();
            if (rs.Read())
            {
                donorname = rs.GetValue(0).ToString();
                contact=rs.GetValue (1).ToString ();
                email =rs.GetValue (2).ToString ();
                address = rs.GetValue(3).ToString();

            }
            //Interaction.MsgBox(donorname + contact + email);
            con.Close();
            con.Open ();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into foodnotification values(@donorid,@donorname,@contact,@email,@address,@notificationdata,@status,@receiverid,@receivername)";
            cmd.Parameters.AddWithValue("@donorid", donorid);
            cmd.Parameters.AddWithValue("@donorname", donorname );
            cmd.Parameters.AddWithValue("@contact", Convert.ToInt64(contact ));
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@notificationdata", txtnotification .Text.ToString ());

            cmd.Parameters.AddWithValue("@status", "Initial Notification");
            cmd.Parameters.AddWithValue("@receiverid", 0);
            cmd.Parameters.AddWithValue("@receivername", "");


            int i = cmd.ExecuteNonQuery();
            
            
            if (i > 0)
            {
                SqlCommand cmdnew = new SqlCommand();
                cmdnew.Connection = con;
                cmdnew.CommandText = "SELECT IDENT_CURRENT('foodnotification')";
                SqlDataReader rsnew;
                rsnew = cmdnew.ExecuteReader();
                if (rsnew.Read())
                {
                    int id = Convert.ToInt32(rsnew.GetValue(0));
                    SendMail(id);

                    Interaction.MsgBox("Notification send successfully!!");
                }




            }
            else
            {
                Interaction.MsgBox("Sorry!Error in sending notification...");
            }
            txtnotification.Text = "";



        }
        public void SendMail(int notificationid)
        {
            string toAddress = "ramsankarsuresh94@gmail.com";

            string subject = "Food Donation Notification";

            string body = "Hai All, \n A new food donation notification made...\n";

            body += " \n Click below link to accept donation...";

            body += "\n  http://localhost:65533/charityacceptpage.aspx?noteid="+notificationid;


            string result = "Message Send successfully!!";

            //string senderId = "anithavijayanmca@gmail.com";


            string senderId = "fooddonation22@gmail.com";


            const string password = "fooddonation@123";

            try
            {

                SmtpClient stmp = new SmtpClient
                {

                    Host = "smtp.gmail.com",

                    Port = 587,

                    EnableSsl = true,

                    DeliveryMethod = SmtpDeliveryMethod.Network,

                    Credentials = new System.Net.NetworkCredential(senderId, password),

                    Timeout = 30000,
                };

                MailMessage message = new MailMessage();
                //(senderId, toAddress, subject, body);
                message.From = new MailAddress(senderId);
               // message.To.Add(new MailAddress(toAddress));

                string[] tempArray = maildata;
                List<string> tempListColors = new List<string>();
                foreach (string color in tempArray)
                {
                    if (!string.IsNullOrEmpty(color))
                        tempListColors.Add(color);
                }
                tempArray = tempListColors.ToArray();

               /* foreach (string s in tempArray)
                {
                    Interaction.MsgBox(s);
                }*/

                foreach (string singlemail in tempArray)
                {
                    message.To.Add(new MailAddress(singlemail));
                }
                                          
                                          
                message.Subject = subject;
                message.Body = body;


                stmp.Send(message);
                
            }

            catch (Exception ex)
            {

            }

        }
    }
}