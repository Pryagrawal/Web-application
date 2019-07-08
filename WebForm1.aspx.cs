using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Collections;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowInterset.Text = "None";

        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            
        }
        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
                SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
                Con.Open();
                string insert = "insert into userinfo (Name,DOB,Gender,Interset) values(@Name,@DOB,@Gender,@Interset)";
                SqlCommand cmd = new SqlCommand(insert, Con);
                cmd.Parameters.AddWithValue("@Name", t4.Text);
               // cmd.Parameters.AddWithValue("@Gender", R1.Checked);
            if (R1.Checked)
                cmd.Parameters.AddWithValue("@gender", "Male");
            else
                if(R2.Checked)
                cmd.Parameters.AddWithValue("@gender", "Female");
            else cmd.Parameters.AddWithValue("@gender", "Other");

            // cmd.Parameters.AddWithValue("@Gender", R2.Checked);
            // cmd.Parameters.AddWithValue("@Gender", R3.Checked);

            cmd.Parameters.AddWithValue("@DOB", Calendar1.SelectedDate);
            if (C1.Checked)
                cmd.Parameters.AddWithValue("@Interset", "Football");
            else
              if (C2.Checked)
                cmd.Parameters.AddWithValue("@Interset", "Cricket");
            else
                if(C3.Checked)
                cmd.Parameters.AddWithValue("@Interset", "Hockey");
           else  cmd.Parameters.AddWithValue("@Interset", "Basketball");
              //  cmd.Parameters.AddWithValue("@Interset", C2.Checked);
               // cmd.Parameters.AddWithValue("@Interset", C3.Checked);
               // cmd.Parameters.AddWithValue("@Interset", C4.Checked);
                cmd.ExecuteNonQuery();

                Response.Redirect("home.aspx");
                Con.Close();
            
           /* userInput.Text = t4.Text;
            genderId.Text = "";
            if (R1.Checked)
            {
                genderId.Text = "Your gender is " + R1.Text;
            }
            else
                if (R2.Checked)
            {
                genderId.Text = "Your gender is " + R2.Text;
            }
            else genderId.Text = "Your gender is " + R3.Text;

            var message = "";
            if (C1.Checked)
            {
                message = C1.Text + " ";
            }
            if (C2.Checked)
            {
                message += C2.Text + " ";
            }
            if (C3.Checked)
            {
                message += C3.Text;
            }
            if (C4.Checked)
            {
                message += C4.Text;
            }
            ShowInterset.Text = message;*/
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //ShowDate.Text = "Your DOB is: " + Calendar1.SelectedDate.ToString("D");


        }

        
    }
}