using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Change_Password : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from logintb where userid=@userid1 and password=@password1 ";
            cm = new SqlCommand(b, con);
            cm.Parameters.AddWithValue("userid1", TextBox1.Text);
            cm.Parameters.AddWithValue("password1", TextBox2.Text);
            cm.ExecuteNonQuery();

            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                if (TextBox2.Text != TextBox3.Text)
                {
                    dr.Close();
                    string l = "update logintb SET password=@password1 where userid=@userid1";
                    cm = new SqlCommand(l, con);
                   
                    cm.Parameters.AddWithValue("userid1", TextBox1.Text);
                    cm.Parameters.AddWithValue("password1", TextBox3.Text);
                    cm.ExecuteNonQuery();
                    string l1 = "update hodtb SET password=@password1 where userid=@userid1";
                    cm = new SqlCommand(l1, con);
                    cm.Parameters.AddWithValue("userid1", TextBox1.Text);
                    cm.Parameters.AddWithValue("password1", TextBox3.Text);
                    cm.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password Updated Successfully')", true);
                }
                else if (TextBox2.Text == TextBox3.Text)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Password Cannot be Same as Old Password...Please Try Again')", true);
                }
                else
                {
                    Response.Write("<script language='Javascript'>alert('User Id Not Found')</script>");

                }
            }
            dr.Close();
        }
    }
}