using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MTN
{
    public partial class ccc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void billinsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["mobi"].DefaultValue =
           ((TextBox)gc1.FooterRow.FindControl("mobi")).Text;
            SqlDataSource1.InsertParameters["amount"].DefaultValue =
           ((TextBox)gc1.FooterRow.FindControl("amount")).Text;
            SqlDataSource1.InsertParameters["billdate"].DefaultValue =
           ((TextBox)gc1.FooterRow.FindControl("billdate")).Text;

            SqlDataSource1.Insert();
        }
    }
}