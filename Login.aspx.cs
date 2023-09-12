using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            drpusertype.Items.Insert(0, "Select user type");

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (drpusertype.Text == "Select user type")
        {
            drpusertype.Text = "Please select user type";
        }

        if (drpusertype.Text == "Admin")
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Data Directory|;Integrated Security=True;User Instance=True");
            string str;
            str = "select count(*) from Admin where Admin_UserName='" + txtusername.Text + "' and Admin_Password='" + txtpassword.Text + "'   ";

            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Open();

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            //object
            //to get single value from database....


            if (i == 1)
            {

                Session["User Name123"] = txtusername.Text;


                Response.Redirect("Admin.aspx");
            }
            else
            {
                drpusertype.Text = "Invalid Admin User Name.";
            }

        }

        if (drpusertype.Text == "Clerk")
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Data Directory|;Integrated Security=True;User Instance=True");
            string str;
            str = "select count(*) from Clerk_Profile where UserName='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'   ";

            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Open();

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            //object
            //to get single value from database....


            if (i == 1)
            {

                Session["User Name123"] = txtusername.Text;


                Response.Redirect("Clerkhome.aspx");
            }
            else
            {
                drpusertype.Text = "Invalid Clerk UserName.";
            }


        }


        if (drpusertype.Text == "Teacher")
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Data Directory|;Integrated Security=True;User Instance=True");
            string str;
            str = "select count(*) from Teacher where User Name='" + txtusername.Text + "' and User Password='" + txtpassword.Text + "'   ";

            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Open();

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            //object
            //to get single value from database....


            if (i == 1)
            {

                Session["Teacher123"] = txtusername.Text;


                Response.Redirect("TeacherHome.aspx");
            }
            else
            {
                drpusertype.Text = "Invalid Teacher UserName.";
            }

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (drpusertype.Text == "Select user type")
        {
            drpusertype.Text = "Please select user type";
        }

        if (drpusertype.Text == "Admin")
        {
            Response.Redirect("Adminforgotpassword.aspx");
        }

        if (drpusertype.Text == "Clerk")
        {
            Response.Redirect("Clerkforgotpassword.aspx");
        }

        if (drpusertype.Text == "Teacher")
        {
            Response.Redirect("TeacherForgotPassword.aspx");
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {

    }
}