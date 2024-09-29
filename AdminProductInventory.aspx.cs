using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Reflection.Emit;



namespace ResturantManagement1
{
    public partial class AdminProductInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            updateItem();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addnewitem();
        }
        //user defined function
        void updateItem()
        {
            if (checkIfitemExists())
            {
                
                try
                {

                   
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO product_inventory_tb7" +
                        "(item_id,item_category,item_name,price,ordered_quantity,current_stock)" +
                        " values(@item_id,@item_category,@item_name,@price,@ordered_quantity,@current_stock)", con);


                    cmd.Parameters.AddWithValue("@item_id", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@item_category", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@item_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@price", TextBox10.Text.Trim());

                    cmd.Parameters.AddWithValue("@ordered_quantity", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@current_stock", TextBox1.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Write("<script>alert(' Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
            
        }


        bool checkIfitemExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from product_inventory_tb7 where item_id='" + TextBox4.Text.Trim() + "';", con);
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
        void addnewitem()
        {
            if (checkIfitemExists())
            {
                Response.Write("<script>alert('Item already exist');</script>");
            }
            else
            {
                try
                {



                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO product_inventory_tb7" +
                        "(item_id,item_category,item_name,price,ordered_quantity,current_stock)" +
                        " values(@item_id,@item_category,@item_name,@price,@ordered_quantity,@current_stock)", con);

                    cmd.Parameters.AddWithValue("@item_id", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@item_category", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@item_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@price", TextBox10.Text.Trim());

                    cmd.Parameters.AddWithValue("@ordered_quantity", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@current_stock", TextBox1.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert(' Added  successfully.');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
           


        }


    }
}