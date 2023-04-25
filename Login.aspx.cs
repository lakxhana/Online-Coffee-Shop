using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project_2A
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignIn_Click(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegistrationForm.aspx");
        }

        protected void lgnbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroundUpCafeConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "SELECT COUNT (*) from [user] where userEmailAdd= '" + EmailTextBox.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "SELECT userPass from [user] where userEmailAdd= '" + EmailTextBox.Text + "' ";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string userPass = passComm.ExecuteScalar().ToString();
                if (userPass == PasswordTextBox.Text)
                {

                    Server.Transfer("Homepage.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('Password is incorrect!')</script>");
                }
            }
        }
    }
}
    