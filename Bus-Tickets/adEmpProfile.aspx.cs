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
    public partial class WebForm22 : System.Web.UI.Page
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

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "UPDATE Driver SET Name = @Name, Surname = @Surname,Address = @Address ,PhoneNumber = @PhoneNumber WHERE DriverId = @DriverId";
                dataTransfere = new busMethods();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Driver_Id", int.Parse(txtId.Text));
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "SELECT * FROM Driver WHERE DriverId = '" + int.Parse(txtId.Text) + "'";
                dataTransfere = new busMethods();
                table = new DataTable();
                dataSet = new DataSet();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dataSet, "Driver");
                    table = dataSet.Tables["Driver"];

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

        protected void btnDel_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "DELETE FROM Customer WHERE DriverId = @DriverId";
                dataTransfere = new busMethods();
                table = new DataTable();
                dataSet = new DataSet();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@DriverId", int.Parse(txtId.Text));
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record Deleted')</script>");
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
    }
}