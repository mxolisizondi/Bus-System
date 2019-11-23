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
    public partial class WebForm12 : System.Web.UI.Page
    {
        busMethods dataTransfere;
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlDataReader reader;
        SqlCommand cmd;
        DataSet dataSet;
        DataTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            txtAnswer.Enabled = false;
            txtAnswer2.Enabled = false;
            txtConfirm.Enabled = false;
            txtNewPass.Enabled = false;
            btnChangePass.Enabled = false;
        }

        protected void btnPrevPass_Click(object sender, EventArgs e)
        {
            try
            {
                string u_name = File.ReadAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt");
               // string query = "SELECT * FROM Login";
                string query2 = "SELECT * FROM CreateAccount WHERE username = " + int.Parse(u_name) + "";
                dataTransfere = new busMethods();
                table = new DataTable();
                dataSet = new DataSet();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query2,con);
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dataSet, "CreateAccount");
                    table = dataSet.Tables["CreateAccount"];

                    foreach(DataRow row in table.Rows)
                    {
                        if (row["password"].ToString().Equals(txtPrevPass.Text))
                        {
                            txtAnswer.Enabled = true;
                            txtAnswer2.Enabled = true;
                            txtConfirm.Enabled = true;
                            txtNewPass.Enabled = true;
                            btnChangePass.Enabled = true;

                            lblQ1.Text = row["question1"].ToString();
                            lblQ2.Text = row["question2"].ToString();
                        }
                        //lblQ1.Text = table.Rows[0][4].ToString();
                        //lblQ2.Text = table.Rows[0][5].ToString();
                    }
                    
                }
            }
            catch(Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            string u_name = File.ReadAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt");
            // string query = "SELECT * FROM Login";
            string query2 = "SELECT * FROM CreateAccount WHERE username = " + int.Parse(u_name) + "";
            dataTransfere = new busMethods();
            table = new DataTable();
            dataSet = new DataSet();
            con = new SqlConnection();
            con = dataTransfere.Connect();
            con.Open();

            using (adapter = new SqlDataAdapter())
            {
                cmd = new SqlCommand(query2, con);
                adapter.SelectCommand = cmd;
                adapter.Fill(dataSet, "CreateAccount");
                table = dataSet.Tables["CreateAccount"];

                foreach (DataRow row in table.Rows)
                {
                    if (txtAnswer.Text.Equals(row["answer1"].ToString()) && txtAnswer2.Text.Equals(row["answer2"].ToString()))
                    {
                        //Response.Write("<script>alert('Answers are the same');</script>");
                        if (txtConfirm.Text.Equals(txtNewPass.Text))
                        {
                            try
                            {
                                string query = "UPDATE CreateAccount SET password = @password WHERE username = @username";
                                string query3 = "UPDATE Login SET password = @password WHERE username = @username";
                                dataTransfere = new busMethods();
                                con = new SqlConnection();
                                con = dataTransfere.Connect();
                                con.Open();

                                using (adapter = new SqlDataAdapter())
                                {
                                    cmd = new SqlCommand(query, con);
                                    cmd.Parameters.AddWithValue("@password", txtNewPass.Text);
                                    cmd.Parameters.AddWithValue("@username", int.Parse(u_name));
                                    cmd.ExecuteNonQuery();

                                    cmd = new SqlCommand(query3, con);
                                    cmd.Parameters.AddWithValue("@password", txtNewPass.Text);
                                    cmd.Parameters.AddWithValue("@username", int.Parse(u_name));
                                    cmd.ExecuteNonQuery();

                                    Response.Write("<script>alert('Password Changed')</script>");
                                }
                                con.Close();
                            }
                            catch (Exception ex)
                            {
                                ex.ToString();
                            }
                        }
                    }


                }
            }

        }
    }
}