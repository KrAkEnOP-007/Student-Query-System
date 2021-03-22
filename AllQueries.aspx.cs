using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Student_Query_System
{
    public partial class AllQueres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null || Session["username"].ToString() == "" || Session["username"].ToString() == "Login")
            {
                Response.Redirect("Login.aspx");
            }
       
        }
    }
}