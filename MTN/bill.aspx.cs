using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MTN
{
    
    public partial class bill : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mtndb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string mobile = Request.QueryString["mobile"];
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            string com = "SELECT * FROM bill WHERE mobi='"+ mobile + "'";
            SqlCommand cmd = new SqlCommand(com, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                
                billgv.DataSource = dt;
                billgv.DataBind();
            }
        }
    }
}