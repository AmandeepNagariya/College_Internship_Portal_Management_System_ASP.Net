using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Internship_Portal
{
    public partial class Certificate_Upload : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cm;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label2.Text = (string)Session["studentid"];
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string path = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Internshipdb.mdf;Integrated Security=True";
            con = new SqlConnection(path);
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("~") + "//upload//" + FileUpload1.FileName);
            Label1.Text = FileUpload1.FileName;
            string k = "update studenttb SET certificate_filename=@certificate_filename1 where studentid=@studentid1";
            cm = new SqlCommand(k, con);
            string k1 = "update internshiptb SET certificate_filename=@certificate_filename1,status=@status1 where studentid=@studentid1";
            cm = new SqlCommand(k1, con);
            cm.Parameters.AddWithValue("studentid1", TextBox1.Text);
            cm.Parameters.AddWithValue("status1", TextBox2.Text);

            cm.Parameters.AddWithValue("certificate_filename1", Label1.Text);
            cm.ExecuteNonQuery();
            Response.Write("<script language='Javascript'>alert('File Uploaded Successfully')</script>");

        }
    }
}