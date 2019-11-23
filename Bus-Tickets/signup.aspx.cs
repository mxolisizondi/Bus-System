using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Bus_Tickets
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlDataReader reader;
        SqlCommand cmd;
        DataSet dataSet;
        DataTable table;

        busMethods dataTransfere = new busMethods();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con = dataTransfere.Connect();
            dataSet = new DataSet();
            con.Open();
            try
            {
                string query1 = "INSERT INTO Login(username,password) VALUES(@username,@password)";
                string query2 = "INSERT INTO CreateAccount(accountID,username,password,question1,question2,answer1,answer2) VALUES(@accountID,@username,@password,@question1,@question2,@answer1,@answer2)";
                string query3 = "INSERT INTO Customer(Customer_Id,CustName,CustSurname,Address,PhoneNumber) VALUES(@Customer_Id,@CustName,@CustSurname,@Address,@PhoneNumber)";
                if (txtPass.Text.Equals(txtRPass.Text))
                {
                    using (adapter = new SqlDataAdapter())
                    {
                        cmd = new SqlCommand(query1, con);
                        cmd.Parameters.AddWithValue("@username", int.Parse(txtUser.Text));
                        cmd.Parameters.AddWithValue("@password", txtPass.Text);
                        cmd.ExecuteNonQuery();
                        
                        cmd = new SqlCommand(query2, con);
                        cmd.Parameters.AddWithValue("@accountID", int.Parse(txtUser.Text));
                        cmd.Parameters.AddWithValue("@username", int.Parse(txtUser.Text));
                        cmd.Parameters.AddWithValue("@password", txtPass.Text);
                        cmd.Parameters.AddWithValue("@question1", DropDownList1.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@question2", DropDownList2.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@answer1", txtAnswer.Text);
                        cmd.Parameters.AddWithValue("@answer2", txtAnswer2.Text);
                        cmd.ExecuteNonQuery();

                        cmd = new SqlCommand(query3,con);
                        cmd.Parameters.AddWithValue("@Customer_Id",int.Parse(txtUser.Text));
                        cmd.Parameters.AddWithValue("@CustName", txtName.Text);
                        cmd.Parameters.AddWithValue("@CustSurname", txtSurname.Text);
                        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Account Created');</script>");
                    }
                }
            }
            catch(Exception ex)
            {
                ex.ToString();
            }
        } 
    }
}