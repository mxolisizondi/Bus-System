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
    public partial class prac_book : System.Web.UI.Page
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
            Label1.Text = null;
            Label2.Text = null;
            Label5.Text = null;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            dataSet = new DataSet();
            dataTransfere = new busMethods();
            con = dataTransfere.Connect();
            con.Open();
            try
            {
                string query = "SELECT username,password FROM Login ";
                using (adapter = new SqlDataAdapter())
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
                            Response.Redirect("~/payment.aspx");
                        }
                    }


                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnSeacrh_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "SELECT BusNo,time,price FROM AllocateBusToTrip,Tri WHERE AllocateBusToTrip.TripId = Tri.TripId AND Tri.location = '" + DropDownList1.SelectedValue.ToString() + "' AND Tri.Destination = '" + DropDownList2.SelectedValue.ToString() + "' ";
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
                    adapter.Fill(dataSet, "AllocateBusToTrip,Tri");
                    table = dataSet.Tables["AllocateBusToTrip,Tri"];

                    foreach (DataRow row in table.Rows)
                    {
                        Label1.Text = row["BusNo"].ToString();
                        Label2.Text = row["time"].ToString();
                        Label5.Text = row["price"].ToString();
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            

        }

        protected void btnProc_Click(object sender, EventArgs e)
        {

            
        }
    }
}