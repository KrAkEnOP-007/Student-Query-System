using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Query_System
{
    public partial class studentView : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void AboutUsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void ContactUsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void NewQueryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewQuery.aspx");
        }

        protected void AllQueriesbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllQueries.aspx");
        }
    }
}