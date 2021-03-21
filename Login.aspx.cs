using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
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
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\projects\Student Query System\App_Data\StudentQueryDB.mdf;Integrated Security=True");
            if (login == "Student")
            {
                SqlCommand cmd = new SqlCommand("select COUNT(1) from Studentmaster where UserName= '" + userText.Text.ToString() + "' and Password = '" + PasswordTxt.Text.ToString() + "'", conn);
                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = userText.Text;
                    Response.Redirect("HomePage.aspx");
                    
                }
                else
                {
                    ErrorLoginTxt.Text = "Invalid username or password";
                }
            }
            else if (login == "Admin")
            {
                SqlCommand cmd = new SqlCommand("select COUNT(1) from Studentmaster where UserName= '" + userText.Text.ToString() + "' and Password = '" + PasswordTxt.Text.ToString() + "'", conn);
                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = userText.Text;
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    ErrorLoginTxt.Text = "Invalid username or password";
                }
            }
        }

        protected void StudentloginBtn_Click(object sender, EventArgs e)
        {
           
            login = "Student";
        }

        protected void StudentRegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegister.aspx");
        }

        protected void AdminLoginbtn_Click(object sender, EventArgs e)
        {
          
            login = "Admin";

        }
    }
}