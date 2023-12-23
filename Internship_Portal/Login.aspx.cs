using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox3.Text = "HOD";
                TextBox4.Text = "Student";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            if (TextBox1.Text == "admin@gmail.com" && TextBox2.Text == "admin123")
            {
                Response.Write("<script language='Javascript'>alert('Admin Login Successful')</script>");
                Response.Redirect("Dashboard.aspx");
            }
            
            string b = "select * from logintb where userid=@userid1 and password=@password1 and role=@role1";
            cm = new SqlCommand(b, con);
            cm.Parameters.AddWithValue("userid1", TextBox1.Text);
            cm.Parameters.AddWithValue("password1", TextBox2.Text);
            cm.Parameters.AddWithValue("role1", TextBox3.Text);
            cm.ExecuteNonQuery();
            Session["userid"] = TextBox1.Text;
            Session["studentid"] = TextBox1.Text;
            dr = cm.ExecuteReader();
            if (dr.Read())
            {

                if(TextBox1.Text=="admin@gmail.com"&&TextBox2.Text=="admin123")
                {
                    Response.Write("<script language='Javascript'>alert('Admin Login Successful')</script>");
                    Response.Redirect("Dashboard.aspx");
                }
                  if(TextBox1.Text!=""&&TextBox2.Text!=""&&TextBox3.Text=="HOD")
                {
                    Response.Write("<script language='Javascript'>alert('HOD Login Successful')</script>");
                    Response.Redirect("Student.aspx");
                }
                 
            }
            else if(TextBox1.Text != "" && TextBox2.Text != "" && TextBox4.Text == "Student")
            {
                Response.Write("<script language='Javascript'>alert('Student Login Successful')</script>");
                Response.Redirect("Internship.aspx");
            }
            else
            {
                Response.Write("<script language='Javascript'>alert('Login Successful')</script>");

            }
            dr.Close();
        }
    }
}