using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace Bus_Tickets
{
    public partial class WebForm5 : System.Web.UI.Page
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

        protected void btnReport_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "INSERT INTO Report (ReportId,BusNo,TripId,Date,Time) VALUES(@ReportId,@BusNo,@TripId,@Date,@Time)";
                dataTransfere = new busMethods();
                con = new SqlConnection();
                con = dataTransfere.Connect();
                con.Open();

                using (adapter = new SqlDataAdapter())
                {
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@ReportId", int.Parse(txtTrip_ID.Text));
                    cmd.Parameters.AddWithValue("@BusNo", int.Parse(txtBus_No.Text));
                    cmd.Parameters.AddWithValue("@TripId", int.Parse(txtTrip_ID.Text));
                    cmd.Parameters.AddWithValue("@Date",DateTime.Now.Date.ToString());
                    cmd.Parameters.AddWithValue("@Time",DateTime.Now.TimeOfDay.ToString());
                }

            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
    }
}