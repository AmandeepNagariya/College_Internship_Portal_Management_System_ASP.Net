using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Hod : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = "HOD";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from hodtb where userid=@userid1";


            cm = new SqlCommand(b, con);
            cm.Parameters.AddWithValue("userid1", TextBox1.Text);

            cm.ExecuteNonQuery();
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script language='Javascript'>alert('Already Registered...Register with different user id')</script>");
            }

            else
            {
                dr.Close();
                string k = "insert into hodtb(userid,name,email,mobile,password,department) values (@userid1,@name1,@email1,@mobile1,@password1,@department1)";
                cm = new SqlCommand(k, con);
                
                cm.Parameters.AddWithValue("userid1", TextBox1.Text);
                cm.Parameters.AddWithValue("name1", TextBox2.Text);
                cm.Parameters.AddWithValue("email1", TextBox3.Text);
                cm.Parameters.AddWithValue("mobile1", TextBox4.Text);
                cm.Parameters.AddWithValue("password1", TextBox5.Text);
                cm.Parameters.AddWithValue("department1", DropDownList1.Text);
                //execute command
                cm.ExecuteNonQuery();
                //Generate Message Using Javascript
                Response.Write("<script language='Javascript'>alert('HOD Registered Successfully')</script>");
                string b1 = "insert into logintb(userid,password,role) values (@userid1,@password1,@role1)";
                cm = new SqlCommand(b1, con);
                cm.Parameters.AddWithValue("userid1", TextBox1.Text);
                cm.Parameters.AddWithValue("password1", TextBox5.Text);
                cm.Parameters.AddWithValue("role1", Label1.Text);
                cm.ExecuteNonQuery();
                Session["userid"] = TextBox1.Text;
            }

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from hodtb";
            cm = new SqlCommand(b, con);
            dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
}