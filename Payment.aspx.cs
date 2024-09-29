using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ResturantManagement1
{
    public partial class Payment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO payment_tb2(Name,ordered_item,Payment_Id ,Payment_mode ,Card_no ,bkash_nagad_rocket_no,Address,tnx_id ) values(@Name,@ordered_item,@Payment_Id ,@Payment_mode ,@Card_no ,@bkash_nagad_rocket_no,@Address,@tnx_id )", con);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ordered_item", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Payment_Id", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Payment_mode", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Card_no", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@bkash_nagad_rocket_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@tnx_id", TextBox3.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Payment Process is Successful.Your Parcel Will be Reached in 40 minutes');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Payment Process is Successful.Your Percel Will be Reached in 40 minutes');</script>");
               
            }
        }
    }
}