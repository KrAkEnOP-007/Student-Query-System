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
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\projects\Student Query System\App_Data\StudentQueryDB.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null || Session["username"].ToString() == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (QueryDataTxt.Text.Length > 5)
                {
                    int newId = getNewId();
                    newId += 1;
                    SqlCommand cmd = new SqlCommand("insert into AllQueries values('" + newId + "','" + QueryDataTxt.Text.ToString() + "', '' ,'N' , '" + Session["username"].ToString() + "') ", conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Query Submitted Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Enter A related query!!!!')</script>");
                }
                
            }
        }
        private int getNewId()
        {
            SqlCommand cmd = new SqlCommand("select MAX(QueryId) from AllQueries ", conn);
            conn.Open();
            int id = int.Parse(cmd.ExecuteScalar().ToString());
            conn.Close();
            return id;
        }
    }
}