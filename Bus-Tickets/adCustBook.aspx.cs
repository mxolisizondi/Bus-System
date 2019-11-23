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
    public partial class WebForm21 : System.Web.UI.Page
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

                    GridView1.DataSource = table;
                    GridView1.DataBind();

                }
                con.Close();
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Ticket Printed');</script>");
        }
    }
}