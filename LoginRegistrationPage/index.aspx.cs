using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegistrationPage
{
    public partial class itex : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=HOME-PC\\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True;");
        SqlCommand command;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {

            conn.Open();
            query = "  declare @value int \r\n execute RegistWeb @value output, @Username, @Email, @Password, @phone \r\n select @value \r\n ";
            command = new SqlCommand(query, conn);
            //command.CommandType=System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Username", Txtbox_username.Text);
            command.Parameters.AddWithValue("@Email", Txtbox_Signemail.Text);
            command.Parameters.AddWithValue("@Password", Txtbox_SignPasswd.Text);
            command.Parameters.AddWithValue("@phone", Txtbox_phone.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            conn.Close();

            if (Convert.ToInt32(ds.Tables[0].Rows[0][0]) == 1)
            {
                lblresult.Text = "This user have exsist";
            }
            else
            {
                lblresult.Text = "Congurulation! User has created!";
            }

        }

        //protected void loginClick(object sender, EventArgs e)
        //{

        //    conn.Open();
        //    command = new SqlCommand("LoginCheck", conn);
        //    command.CommandType = System.Data.CommandType.StoredProcedure;
        //    command.Parameters.AddWithValue("@Username", Txtbox_LoginEmail.Text);
        //    command.Parameters.AddWithValue("@Password", Txtbox_LoginPasswd.Text);
        //    command.Parameters.Add(new SqlParameter()
        //    {
        //        Direction = ParameterDirection.Output,
        //        ParameterName = "@status",
        //        SqlDbType = SqlDbType.Int

        //    });

        //    command.ExecuteNonQuery();
        //    conn.Close();

        //    if (command.Parameters["@status"].Value.ToString() == "1")
        //    {
        //        lblresult.Text = "Login Succesfully!";
        //    }
        //    else
        //    {
        //        lblresult.Text = "Login Unsuccesfully! Try Again!";
        //    }


        //}

    
    }
}