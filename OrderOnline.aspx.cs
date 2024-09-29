using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ResturantManagement1
{
    public partial class OnlineOrder : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //go button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            GetItemByID();
        }
        //order confirm button click event
        protected void Button2_Click(object sender, EventArgs e)
        {
            NewOrder();
        }
        
       
        void GetItemByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from product_inventory_tb7 where Item_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox4.Text = dr.GetValue(3).ToString();
                        
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void NewOrder()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Orders_tb4 (member_id,Item_id,Member_Name," +
                    "Item_price,Member_address,Oreder_date,Order_time,Delivery_time) " +
                    "values(@member_id,@Item_id,@Member_Name,@Item_price,@Member_address," +
                    "@Oreder_date,@Delivery_time)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Item_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Member_Name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Item_price", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Member_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Oreder_date", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Order_time", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Delivery_time", TextBox7.Text.Trim());
              
                con.Close();

                Response.Write("<script>alert('Order Confirmed ');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}