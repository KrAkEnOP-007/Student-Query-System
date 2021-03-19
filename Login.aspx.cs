using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Query_System
{
    public partial class Login : System.Web.UI.Page
    {
        string login = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {

        }

        protected void StudentloginBtn_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            login = "Student";
        }

        protected void StudentRegisterBtn_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void AdminLoginbtn_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            login = "Admin";
        }
    }
}