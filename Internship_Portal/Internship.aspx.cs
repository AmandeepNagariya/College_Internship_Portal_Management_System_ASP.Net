using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Internship : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = (string)Session["studentid"];
                TextBox2.Text = (string)Session["name"];
                TextBox3.Text = (string)Session["branch"];
                TextBox4.Text = (string)Session["section"];
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string k = "insert into internshiptb(studentid,name,branch,section,company,city,type,status) values (@studentid1,@name1,@branch1,@section1,@company1,@city1,@type1,@status1)";
            cm = new SqlCommand(k, con);

            cm.Parameters.AddWithValue("studentid1", TextBox1.Text);
            cm.Parameters.AddWithValue("name1", TextBox2.Text);
            cm.Parameters.AddWithValue("branch1", TextBox3.Text);
            cm.Parameters.AddWithValue("section1", TextBox4.Text);
            cm.Parameters.AddWithValue("company1", TextBox5.Text);
            cm.Parameters.AddWithValue("city1", TextBox6.Text);
            cm.Parameters.AddWithValue("type1", DropDownList1.Text);
            cm.Parameters.AddWithValue("status1", Label2.Text);
            //execute command
            cm.ExecuteNonQuery();
            //Generate Message Using Javascript
            Response.Write("<script language='Javascript'>alert('Internship Request Submitted Successfully')</script>");
        }
    }
}