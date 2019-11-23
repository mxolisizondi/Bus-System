using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Bus_Tickets
{
    public class busMethods
    {
        DataSet dataSet;
        public SqlConnection Connect()
        {
            SqlConnection con = new SqlConnection(@"Data Source=CEDRIC-HCCUQI5;Initial Catalog=BookingSystem;Integrated Security=True");
            return con;
        }
        public DataSet RetrieveDataSet(string query, string tableName)
        {
            SqlConnection conn = this.Connect();
            dataSet = new DataSet();
            SqlCommand cmd;
            try
            {

                using (conn = new SqlConnection())
                {
                    conn.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter())
                    {
                        cmd = new SqlCommand(query, conn);
                        adapter.SelectCommand = cmd;
                        adapter.Fill(dataSet, tableName);
                        return dataSet;
                    }
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                return null;
            }
        }

        public void AlterData(string query)
        {
            SqlCommand cmd;
            SqlConnection conn;
            try
            {
                using (conn = this.Connect())
                {
                    conn.Open();
                    cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
       
    }
}