using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class DepReport : System.Web.UI.Page
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            if(DropDownList1.SelectedIndex==1)
            {
                string b = "select * from internshiptb where section='A'";
                cm = new SqlCommand(b, con);
                dr = cm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                string b = "select * from internshiptb where section='B'";
                cm = new SqlCommand(b, con);
                dr = cm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
            }
            if (DropDownList1.SelectedIndex == 3)
            {
                string b = "select * from internshiptb where section='C'";
                cm = new SqlCommand(b, con);
                dr = cm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
            }
            if (DropDownList1.SelectedIndex == 4)
            {
                string b = "select * from internshiptb where section='D'";
                cm = new SqlCommand(b, con);
                dr = cm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void HyperLink1_Load(object sender, EventArgs e)
        {
            
        }
    }
}