using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Mini_Project_2A
{
    
    public partial class Payment : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            subtotal.Text = Request.QueryString["Subtotal"];
            tax.Text = Request.QueryString["Tax"];
            total.Text = Request.QueryString["Total"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source = .\SQLEXPRESS;Initial Catalog=GroundUpCafe;Integrated Security=True");
            conn.Open();

            

            cmd = new SqlCommand("INSERT INTO [Payment] (address, mobileNum, method) VALUES (@address, @mobileNum, @method)", conn);
            cmd.Parameters.AddWithValue("@address", TextBoxAdd.Text);
            cmd.Parameters.AddWithValue("@mobileNum", TextBoxMobile.Text);
            if (RadioBtnCOD.Checked)
            {
                cmd.Parameters.AddWithValue("@method", RadioBtnCOD.Text);
            }
            if(RadioBtnOnline.Checked)
            {
                cmd.Parameters.AddWithValue("@method", RadioBtnOnline.Text);
            }

            cmd.ExecuteNonQuery();
            Response.Write("<script> alert ('Payment is successfull!')</script>");
            TextBoxAdd.Text = "";
            TextBoxMobile.Text = "";
            conn.Close();
            Server.Transfer("Confirmation.aspx");
        }
    }
}