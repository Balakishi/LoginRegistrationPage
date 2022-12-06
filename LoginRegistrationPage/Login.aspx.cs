using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegistrationPage
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=HOME-PC\\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True;");
        SqlCommand command;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_login(object sender, EventArgs e)
        {
            conn.Open();
            command = new SqlCommand("LoginCheck", conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Email", Txtbox_Loginemail.Text);
            command.Parameters.AddWithValue("@Password", Txtbox_LoginPasswd.Text);
            command.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int

            });

            command.ExecuteNonQuery();
            conn.Close();

            if (command.Parameters["@status"].Value.ToString() == "1")
            {
                lblresult.Text = "Login Succesfully!";
            }
            else
            {
                lblresult.Text = "Login Unsuccesfully! Try Again!";
            }
        }
    }
}