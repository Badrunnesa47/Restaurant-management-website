using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResturantManagement1
{
    public partial class Chefs : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkIfChefExists())
            {
                Response.Write("<script>alert('Chef with this Id is already exists.You can't add chef whit the same chef Id');</script>");

            }
            else
            {
                AddnewChef();
            }
        }
        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfChefExists())
            {
                UpdateChef();
                
            }
            else
            {
                Response.Write("<script>alert('Chef with this Id doesn't exists.');</script>");

            }

        }

        //delete button click

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfChefExists())
            {
                DeleteChef();

            }
            else
            {
                Response.Write("<script>alert('Chef with this Id doesn't exists.');</script>");

            }
        }
        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getChefById();

        }
        //user define function
        void getChefById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from chef_master_tb1 WHERE Chef_Id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Chef ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }
        void DeleteChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE chef_master_tb1  WHERE Chef_Id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef deleted successfully');</script>");
                clearform();
               

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void UpdateChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE chef_master_tb1 SET Chef_Name=@Chef_Name WHERE Chef_Id='"+ TextBox1.Text.Trim() + "'", con);
               
                cmd.Parameters.AddWithValue("@Chef_Name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef updated successfully');</script>");
                clearform();
               ;

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void AddnewChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO chef_master_tb1(Chef_Id,Chef_Name) values(@Chef_Id,@Chef_Name )", con);
                cmd.Parameters.AddWithValue("@Chef_Id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Chef_Name", TextBox2.Text.Trim());
                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef added successfully');</script>");
                clearform();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        

        bool checkIfChefExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from chef_master_tb1 WHERE Chef_Id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearform()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

    }
}