using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Student : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Text = (string)Session["userid"];
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from logintb where userid=@userid1 and password=@password1";


            cm = new SqlCommand(b, con);
            cm.Parameters.AddWithValue("userid1", TextBox1.Text);
            cm.Parameters.AddWithValue("password1", TextBox4.Text);

            cm.ExecuteNonQuery();
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script language='Javascript'>alert('Student Already Registered')</script>");
            }

            else
            {
                dr.Close();
                string k = "insert into studenttb(studentid,name,branch,section,mobile,session) values (@studentid1,@name1,@branch1,@section1,@mobile1,@session1)";
                cm = new SqlCommand(k, con);
                Label4.Text = "Student";
                cm.Parameters.AddWithValue("studentid1", TextBox1.Text);
                cm.Parameters.AddWithValue("name1", TextBox2.Text);
                cm.Parameters.AddWithValue("branch1", TextBox5.Text);
                cm.Parameters.AddWithValue("mobile1", TextBox4.Text);
                cm.Parameters.AddWithValue("section1", DropDownList1.Text);
                cm.Parameters.AddWithValue("session1", Label3.Text);
                //execute command
                cm.ExecuteNonQuery();
                
                //Generate Message Using Javascript
                Response.Write("<script language='Javascript'>alert('Student Registered Successfully')</script>");
                
                string b1 = "insert into logintb(userid,password,role) values (@userid1,@password1,@role1)";
                cm = new SqlCommand(b1, con);
                cm.Parameters.AddWithValue("userid1", TextBox1.Text);
                cm.Parameters.AddWithValue("password1", TextBox4.Text);
                cm.Parameters.AddWithValue("role1", Label4.Text);
                cm.ExecuteNonQuery();
                Session["studentid"] = TextBox1.Text;
                Session["name"] = TextBox2.Text;
                Session["branch"] = TextBox5.Text;
                Session["section"] = DropDownList1.Text;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from studenttb";
            cm = new SqlCommand(b, con);
            dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
}