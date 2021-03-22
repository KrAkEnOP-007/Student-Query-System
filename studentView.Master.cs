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
            if( Session["username"] == null || Session["username"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["username"].ToString() =="Login")
            {

            }
            else
            {
                Login.Visible = false;
                LogOutBtn.Visible = true;

            }
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Response.Redirect("Login.aspx");
        }
    }
}