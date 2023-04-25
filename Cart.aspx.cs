using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.Sql;


namespace Mini_Project_2A
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getSUM();
        }
        SqlCommand cmd;
        SqlConnection conn;
        protected void getSUM()
        {
            string SqlQuery = "SELECT SUM(prodPriceTotal) FROM cart";
            conn = new SqlConnection(@"Data Source = .\SQLEXPRESS;Initial Catalog=GroundUpCafe;Integrated Security=True");
            conn.Open();
            cmd = new SqlCommand(SqlQuery, conn);

            double sub = Convert.ToDouble(cmd.ExecuteScalar());

        
            conn.Close();
            conn.Dispose();
            cmd.Dispose();

            subtotal.Text = sub.ToString();

            double taxx = sub * 0.06;

            double grandtotal = sub + taxx;

            tax.Text = taxx.ToString();
            total.Text = grandtotal.ToString();

 
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Payment.aspx?Subtotal="+ subtotal.Text +
                                "&Tax=" + tax.Text +
                                "&Total=" + total.Text );
        }
    }
}