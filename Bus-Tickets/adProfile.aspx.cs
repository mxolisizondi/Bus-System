using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Bus_Tickets
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        busMethods dataTransfere;
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand cmd;
        DataSet dataSet;
        DataTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            dataTransfere = new busMethods();
            table = new DataTable();
            dataSet = new DataSet();
            string u_name = File.ReadAllText("C:\\Users\\Sandile Cedric Xulu\\Desktop\\loginDetails.txt");
            txtId.Text = u_name;
            string query = "SELECT * FROM Admin WHERE AdminId = " + int.Parse(u_name) + "";
            try
            {
                con = dataTransfere.Connect();
                con.Open();
                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dataSet, "Admin");
                    table = dataSet.Tables["Admin"];

                    foreach (DataRow row in table.Rows)
                    {
                        txtName.Text = row["Name"].ToString();
                        txtSname.Text = row["Surname"].ToString();
                        txtCell.Text = row["PhoneNumber"].ToString();
                        txtAddr.Text = row["Address"].ToString();
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                string query = "UPDATE Admin SET Name = @Name,Surname = @Surname,Address = @Address ,PhoneNumber = @PhoneNumber WHERE AdminId = @AdminId";
                dataTransfere = new busMethods();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@AdminId", int.Parse(txtId.Text));
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Surname", txtSname.Text);
                    cmd.Parameters.AddWithValue("@Address", txtAddr.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", txtCell.Text);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record Updated')</script>");
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