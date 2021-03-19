using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace Student_Query_System
{
    public partial class NewQuery : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {

        }
    }
}