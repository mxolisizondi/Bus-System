using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace Bus_Tickets
{
    public partial class login : System.Web.UI.Page
    {
        busMethods dataTransfere = new busMethods();
        busMethods obj = new busMethods();
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlDataReader reader;
        SqlCommand cmd;
        DataSet dataSet;
        DataTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLogin.Enabled = false;
            txtUser.Enabled = false;
            txtPass.Enabled = false;
        }

        protected void btnFG_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            dataSet = new DataSet();
            dataTransfere = new busMethods();
            con = dataTransfere.Connect();
            con.Open();
            try
            {
                string query = "SELECT username,password FROM Login ";
                using(adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dataSet, "Login");
                    table = new DataTable();
                    table = dataSet.Tables["Login"];

                    foreach (DataRow row in table.Rows)
                    {
                        //for passanger
                        if (row["username"].ToString().Equals(txtUser.Text) && row["password"].ToString().Equals(txtPass.Text))
                        {
                             if (RadioButton1.Checked == true)
                            {
                                File.WriteAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt", txtUser.Text);
                                Response.Redirect("~/pmHome.aspx");
                            }
                            else if (RadioButton2.Checked == true)
                            {
                                File.WriteAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt", txtUser.Text);
                                Response.Redirect("~/empHome.aspx");
                               

                            }

                            else if (RadioButton3.Checked == true)
                            {
                                File.WriteAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt", txtUser.Text);
                                Response.Redirect("~/adHome.aspx");
                            }
                                

                            else if (RadioButton4.Checked == true)
                            {
                                File.WriteAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt", txtUser.Text);
                                Response.Redirect("~/mngHome.aspx");
                            }
                            
                        }
                    }

                    
                }
            }
            catch(Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
            {
                btnLogin.Enabled = true;
                txtUser.Enabled = true;
                txtPass.Enabled = true;
            }
        }
    }
}