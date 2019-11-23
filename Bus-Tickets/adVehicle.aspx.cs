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
    public partial class WebForm20 : System.Web.UI.Page
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
                string query = "UPDATE Bus SET RegNo = @RegNo,Model = @Model ,BusName = @BusName WHERE BusNo = @BusNo";
                dataTransfere = new busMethods();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@RegNo",int.Parse(txtRegNo.Text));
                    cmd.Parameters.AddWithValue("@BusNo",int.Parse(txtBusNumber.Text));
                    cmd.Parameters.AddWithValue("@Model",txtModel.Text);
                    cmd.Parameters.AddWithValue("@BusName",txtBusName.Text);
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
                string query = "SELECT * FROM Bus WHERE BusNo = '"+int.Parse(txtBusNumber.Text)+"' ";
                dataSet = new DataSet();
                table = new DataTable(); 
                dataTransfere = new busMethods();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dataSet,"Bus");
                    table = dataSet.Tables["Bus"];

                    foreach(DataRow row in table.Rows)
                    {
                        txtRegNo.Text = row["RegNo"].ToString();
                        txtModel.Text = row["Model"].ToString();
                        txtBusName.Text = row["BusName"].ToString();
                    }
                }


            }
            catch(Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "DELETE FROM Bus WHERE BusNo = @BusNo";
                dataTransfere = new busMethods();
                table = new DataTable();
                dataSet = new DataSet();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@BusNo", int.Parse(txtBusNumber.Text));
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Record Deleted')</script>");
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