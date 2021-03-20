using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Student_Query_System
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\projects\Student Query System\App_Data\StudentQueryDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select Password from AdminLogin where UserName='Admin'", conn);
            //cmd.Parameters.AddWithValue("@user", Session["username"].ToString());
            conn.Open();
            string str = cmd.ExecuteScalar().ToString();
            if (OldPasswordText.Text == str)
            {
                if (NewPassw1.Text == NewPassw2.Text && NewPassw1.Text != "" && NewPassw2.Text != "")
                {
                    cmd = new SqlCommand("Update AdminLogin set Password = '" + NewPassw1.Text.ToString() + "' where UserName = 'Admin'", conn);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('There was an error')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('wrong password')</script>");
            }
        }
    }
}