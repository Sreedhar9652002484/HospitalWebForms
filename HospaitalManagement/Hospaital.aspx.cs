using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace HospaitalManagement
{
    public partial class Hospaital : System.Web.UI.Page
    {

/*        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
*/        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString)) {

                using (SqlCommand cmd = new SqlCommand("SP_AddPatient", con))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                    // Get the selected date from the calendar
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox6.Text);

                    // Get the selected gender from the radio buttons
                    string gender = RadioButton1.Checked ? "Male" : "Female";
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@ContactNumber", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Label1.Text = "Patient Added Successfully";

                    GridView1.DataBind();

                    TextBox1.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";

                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString)) 
            {
                using (SqlCommand cmd = new SqlCommand("SP_DeletePatient", con))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id",Convert.ToInt32(TextBox2.Text));
                    con.Open() ;
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Label1.Text = "Patient Deleted Successfully";
                    GridView1.DataBind();
                    TextBox2.Text = "";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_UpdatePatient", con))
                    {

                    cmd.CommandType=System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBox2.Text));

                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                    // Get the selected date from the calendar
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextBox6.Text);

                    // Get the selected gender from the radio buttons
                    string gender = RadioButton1.Checked ? "Male" : "Female";
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@ContactNumber", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Label1.Text = "Patient Added Successfully";

                    GridView1.DataBind();

                    TextBox1.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
                 }
        }
    }
}