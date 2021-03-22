using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Student_Query_System
{
    public partial class StudentRegister : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\projects\Student Query System\App_Data\StudentQueryDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signupbtn_Click(object sender, EventArgs e)
        {
           
            if(CheckIsValid()) 
            {
                Response.Write("<script>alert('Username is already taken')</script>");
                return; 
            }

            int newid = getNewId();
            newid += 1;
            SqlCommand cmd = new SqlCommand("insert into StudentMaster values('"+newid+"', '"+Name.Text.ToString()+"','"+floatingEmail.Text.ToString()+"','"+floatingPassword.Text.ToString()+"') ",conn);
            conn.Open();
            int i =cmd.ExecuteNonQuery();
            conn.Close();
            if(i == 1) 
            { 
                Response.Write("<script>alert('Successfully Registered')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('There Was An Error!!!!!!!!')</script>");

            }
        }

        private bool CheckIsValid()
        {
            SqlCommand cmd = new SqlCommand("select UserName from StudentMaster where UserName ='"+floatingEmail.ToString()+"' ",conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read()) 
            {
                conn.Close();
                return true; 
            }
            else {
                conn.Close();
                return false; }
            
        }

        private int getNewId()
        {
            SqlCommand cmd = new SqlCommand("select MAX(StdId) from StudentMaster ",conn);
            conn.Open();
            int id = int.Parse(cmd.ExecuteScalar().ToString());
            conn.Close();
            return id;
        }
    }
}