using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Incharge : System.Web.UI.Page
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
            string b = "select * from inchargetb where inchargeid=@inchargeid1";


            cm = new SqlCommand(b, con);
            cm.Parameters.AddWithValue("inchargeid1", TextBox1.Text);

            cm.ExecuteNonQuery();
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script language='Javascript'>alert('Incharge Already Registered...Register with different user id')</script>");
            }

            else
            {
                dr.Close();
                string k = "insert into inchargetb(inchargeid,name,branch,mobile,section) values (@inchargeid1,@name1,@branch1,@mobile1,@section1)";
                cm = new SqlCommand(k, con);

                cm.Parameters.AddWithValue("inchargeid1", TextBox1.Text);
                cm.Parameters.AddWithValue("name1", TextBox2.Text);
                cm.Parameters.AddWithValue("branch1", TextBox3.Text);
                cm.Parameters.AddWithValue("mobile1", TextBox4.Text);
                cm.Parameters.AddWithValue("section1", DropDownList1.Text);
                //execute command
                cm.ExecuteNonQuery();
                //Generate Message Using Javascript
                Response.Write("<script language='Javascript'>alert('Incharge Registered Successfully')</script>");
                
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string b = "select * from inchargetb";
            cm = new SqlCommand(b, con);
            dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
}