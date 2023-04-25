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
    public partial class EditBooking : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source = .\SQLEXPRESS;Initial Catalog=GroundUpCafe;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("INSERT INTO [booking] (Email,NumOfPeople,Date,Time,Message ) VALUES (@Email,@NumOfPeople,@Date,@Time,@Message)", conn);
            cmd.Parameters.AddWithValue("@Email", "tashasyi@gmail.com");
            cmd.Parameters.AddWithValue("@NumOfPeople", TextBoxNum.Text);
            cmd.Parameters.AddWithValue("@Date",TextBoxDate.Text);
            cmd.Parameters.AddWithValue("@Time", TextBoxTime.Text );
            cmd.Parameters.AddWithValue("@Message", TextBoxMessage.Text);
           

            cmd.ExecuteNonQuery();
            Response.Write("<script> alert ('Booking is successfull')</script>");
            TextBoxNum.Text = "";
            conn.Close();
            Server.Transfer("BookingDetails.aspx");
        }
    }
}