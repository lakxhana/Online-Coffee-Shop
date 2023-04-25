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
    public partial class Item3 : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string initial;
            int increment;
            int quantity;

            initial = TextBoxQty.Text;
            increment = Convert.ToInt16(initial);
            increment++;
            TextBoxQty.Text = increment.ToString();
            quantity = increment;
        }

        protected void btn_minus_Click(object sender, EventArgs e)
        {
            string initial;
            int decrement;
            int quantity;

            if (Convert.ToInt64(TextBoxQty.Text) != 1)
            {
                initial = TextBoxQty.Text;
                decrement = Convert.ToInt16(initial);
                decrement--;
                TextBoxQty.Text = decrement.ToString();
                quantity = decrement;

            }
            else
            {
                TextBoxQty.Text = "1";
            }
        }

        protected void btn_addtocart_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source = .\SQLEXPRESS;Initial Catalog=GroundUpCafe;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("INSERT INTO [cart] (userEmailAdd,prodName, prodQty, prodPrice, prodPriceTotal, prodImage) VALUES (@userEmailAdd, @prodName, @prodQty, @prodPrice, @prodPriceTotal, @prodImage)", conn);
            cmd.Parameters.AddWithValue("@userEmailAdd", "tashasyi@gmail.com");
            cmd.Parameters.AddWithValue("@prodName", prodName.Text);
            cmd.Parameters.AddWithValue("@prodQty", TextBoxQty.Text);
            cmd.Parameters.AddWithValue("@prodPrice", prodPrice.Text);
            cmd.Parameters.AddWithValue("@prodPriceTotal", Convert.ToDouble(TextBoxQty.Text) * Convert.ToDouble(prodPrice.Text));
            cmd.Parameters.AddWithValue("@prodImage", "~/Pictures/product3.png");

            cmd.ExecuteNonQuery();
            Response.Write("<script> alert ('Item has been added to the cart!')</script>");
            TextBoxQty.Text = "1";
            conn.Close();
            Server.Transfer("Homepage.aspx");
        }
    }
}