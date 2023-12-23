using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Internship_Portal
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            string hod = "select * FROM hodtb ";
            SqlCommand cmd = new SqlCommand(hod, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label1.Text = ds.Tables[0].Rows.Count.ToString();

            string path1 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path1);
            string csestud = "SELECT * FROM studenttb WHERE branch='CSE'";
            SqlCommand cmd1 = new SqlCommand(csestud, con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            Label2.Text = ds1.Tables[0].Rows.Count.ToString();

            string path2 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path2);
            string itstud = "SELECT * FROM studenttb WHERE branch='IT'" ;
            SqlCommand cmd2 = new SqlCommand(itstud, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            sda2.Fill(ds2);
            Label3.Text = ds2.Tables[0].Rows.Count.ToString();

            string path3 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path3);
            string civilstud = "SELECT * FROM studenttb WHERE branch='IT'";
            SqlCommand cmd3 = new SqlCommand(civilstud, con);
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd2);
            DataSet ds3 = new DataSet();
            sda3.Fill(ds3);
            Label4.Text = ds3.Tables[0].Rows.Count.ToString();

            string path4 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path4);
            string internstud = "SELECT * FROM internshiptb";
            SqlCommand cmd4 = new SqlCommand(internstud, con);
            SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
            DataSet ds4 = new DataSet();
            sda4.Fill(ds4);
            Label5.Text = ds4.Tables[0].Rows.Count.ToString();
            con.Close();
        }
    }
}