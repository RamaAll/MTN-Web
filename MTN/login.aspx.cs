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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mtndb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if (usernametxt.Text == "admin" && passwordtxt.Text == "123")
                Response.Redirect("manager.aspx");
            else
            {
                string com = "SELECT * FROM users WHERE username='" + usernametxt.Text + "' AND password = '" + passwordtxt.Text + "'";
                SqlCommand cmd = new SqlCommand(com, con);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("bill.aspx?mobile="+ds.Tables[0].Rows[0]["mobile"].ToString());
                }
                else
                {
                    Response.Write("<script>alert('check your username and password')</script>");
                }
            }
        
        }
    }
}