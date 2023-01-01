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
    public partial class manager : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mtndb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            string com = "SELECT * FROM users ";
            SqlCommand cmd = new SqlCommand(com, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                usergv.DataSource = dt;
                usergv.DataBind();
            }
        }
        protected void billinsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["mobi"].DefaultValue =
           ((TextBox)billgv.FooterRow.FindControl("mobi")).Text;
            SqlDataSource1.InsertParameters["amount"].DefaultValue =
           ((TextBox)billgv.FooterRow.FindControl("amount")).Text;
            SqlDataSource1.InsertParameters["billdate"].DefaultValue =
           ((TextBox)billgv.FooterRow.FindControl("billdate")).Text;

            SqlDataSource1.Insert();
        }
    }
}