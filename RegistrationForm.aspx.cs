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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroundUpCafeConnectionString"].ConnectionString);
                conn.Open();
                string checkUser = "SELECT COUNT (*) from [user] where userEmailAdd= '" + EmailTextBox.Text + "'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    Response.Write("<script> alert ('User Already exists!')</script>");
                    Server.Transfer("RegistrationForm.aspx");
                }
            }
        }
        protected void regbtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(@"Data Source = .\SQLEXPRESS;Initial Catalog=GroundUpCafe;Integrated Security=True");
                conn.Open();



                cmd = new SqlCommand("INSERT INTO [user] (userFName, userLName, userEmailAdd, userPass) " +
                    "VALUES (@userFName, @userLName, @userEmailAdd, @userPass)", conn);
                cmd.Parameters.AddWithValue("@userFName", FNameTextBox.Text);
                cmd.Parameters.AddWithValue("@userLName", LNameTextBox.Text);
                cmd.Parameters.AddWithValue("@userEmailAdd", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@userPass", PassTextBox.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert ('Your registration is successful!')</script>");
                FNameTextBox.Text = "";
                LNameTextBox.Text = "";
                EmailTextBox.Text = "";
                PassTextBox.Text = "";
                conn.Close();
                Server.Transfer("Login.aspx");
            }
            catch (Exception ex)
            {

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {


            Server.Transfer("Login.aspx");
        }

        protected void LNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}