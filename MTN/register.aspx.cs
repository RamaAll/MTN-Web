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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mtndb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!agree.Checked)
                Response.Write("<script>alert('please agree our conditions')</script>");
            else {
                if ((fnametxt.Text != "")&&(lnametxt.Text != "")&&(mobiletxt.Text!="")&&(usernametxt.Text!="")&&(passwordtxt.Text!="")&&(conpasswordtxt.Text!="")&&(datetxt.Text!="")&&(passwordtxt.Text == conpasswordtxt.Text))
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO users values(N'" + titledd.Text + "',N'" + fnametxt.Text + "', N'" + lnametxt.Text + "'," + mobiletxt.Text + ",'" + emailtxt.Text + "','" + usernametxt.Text + "','" + passwordtxt.Text + "',N'" + citydd.Text + "',N'" + addresstxt.Text + "',N'" + genderdd.Text + "','" + datetxt.Text + "',N'" + jobtxt.Text + "')";
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    if (fnametxt.Text == "")
                        fnamelbl.Visible = true;
                    if (lnametxt.Text == "")
                        lnamelbl.Visible = true;
                    if (mobiletxt.Text == "")
                        mobilelbl.Visible = true;
                    if (emailtxt.Text == "")
                        emaillbl.Visible = true;
                    if (usernametxt.Text == "")
                        usernamelbl.Visible = true;
                    if (passwordtxt.Text == "")
                        passwordlbl.Visible = true;
                    if (passwordtxt.Text != conpasswordtxt.Text)
                        cpasslbl.Visible = true;
                    if (datetxt.Text == "")
                        birthlbl.Visible = true;

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            fnametxt.Text = "";
            fnamelbl.Visible = false;
            lnametxt.Text = "";
            lnamelbl.Visible = false;
            mobilelbl.Visible = false;
            mobiletxt.Text = "";
            emaillbl.Visible = false;
            emailtxt.Text = "";
            usernamelbl.Visible = false;
            usernametxt.Text = "";
            passwordlbl.Visible = false;
            passwordtxt.Text = "";
            conpasswordtxt.Text = "";
            cpasslbl.Visible = false;
            datetxt.Text = "";
            birthlbl.Visible = false;
        }
    }
}